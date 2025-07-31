# Formulário de Cadastro 1
Com as configurações corretas de webdriver, o cucumber consegue acessar a pagina de cadastro e preencher os campos e concluir o cadastro
```
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
```
Porém, nem o cucumber nem o capybara conseguem fazer verificações.

## Instalando o rspec
Novamente, indo na página de [bibliotecas do Ruby](rubygems.org), procuro pelo rspec e copio ```gem 'rspec', '~> 3.13', '>= 3.13.1'``` para colar no arquivo de dependências do Ruby e rodo novamente o ```bundle install```
Após isso, adicionei uma verificação se ao clicar o botão de cadastrar, estou sendo redirecionado para a página correta.
Desta forma o código ficou assim:
```
Dado('que acesso a página de cadastro') do
  visit "http://rocklov-web:3000/signup"
end

Quando('submeto o meu cadastro completo') do
  find("#fullName").set "Thiago"
  find("#email").set "thiago@gmail.com"
  find("#password").set "pwd123"
  click_button "Cadastrar"
end

Então('sou redirecionado para o Dashboard') do
  expect(page).to have_css ".dashboard"
  sleep 10
end
```
Com um slepp ao final para melhor visualização do processo.
