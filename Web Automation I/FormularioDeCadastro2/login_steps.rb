Dado('que acesso a página principal') do
  visit "http://rocklov-web:3000"
end

Quando('submeto minhas credenciais válidas') do
  find("#email").set "thiago.g.cunha.tc@gmail.com"
  find("#password").set "pwd123"
  click_button "Entrar"
end

Quando('submeto minhas credenciais com senha incorreta') do
  find("#email").set "thiago.g.cunha.tc@gmail.com"
  find("#password").set "pwd12"
  click_button "Entrar"
end

Então('vejo uma mensagem de alerta: Usuário e\/ou senha inválidos.') do
  alert = find(".alert-dark")
  expect(alert.text).to eql "Usuário e\/ou senha inválidos."
end

Quando('submeto minhas credenciais com email que não existe na RockLov') do
  find("#email").set "thiago.g.cunha@gmail.com"
  find("#password").set "pwd123"
  click_button "Entrar"
end

Quando('submeto minhas credenciais com email incorreto') do
  find("#email").set "thiago.g.cunha.tc-gmail.com"
  find("#password").set "pwd12"
  click_button "Entrar"
end

Então('vejo uma mensagem de alerta: Oops. Informe um email válido!') do
  alert = find(".alert-dark")
  expect(alert.text).to eql "Oops. Informe um email válido!"
end

Quando('submeto minhas credenciais sem o email') do
  find("#password").set "pwd12"
  click_button "Entrar"
end

Quando('submeto minhas credenciais sem a senha') do
  find("#email").set "thiago.g.cunha.tc@gmail.com"
  click_button "Entrar"
end

Então('vejo uma mensagem de alerta: Oops. Informe sua senha secreta!') do
  alert = find(".alert-dark")
  expect(alert.text).to eql "Oops. Informe sua senha secreta!"
end