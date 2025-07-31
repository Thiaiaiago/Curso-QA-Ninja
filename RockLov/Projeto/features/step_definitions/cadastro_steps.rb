Dado('que acesso a página de cadastro') do
  visit "http://rocklov-web:3000/signup"
  sleep 10
end

Quando('submeto o meu cadastro completo') do
  find("#fullName").set "Thiago"
  find("#email").set "thiago@gmail.com"
  find("#password").set "pwd123"
  sleep 10
end

Então('sou redirecionado para o Dashboard') do
  pending # Write code here that turns the phrase above into concrete actions
end