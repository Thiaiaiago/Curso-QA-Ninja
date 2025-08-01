# Capybara e Selenium Webdriver
### O que é o Capybara?
O capybara é um framework para automatizar testes para aplicações web, simulando como um usuário real interage com a aplicação.
Dentro do Capybara tem o Selenium, que eu já tenho um pouco de experiência.

## Instalação da biblioteca
Acessei o site com as [bibliotecas do Ruby](rubygems.org), copiei o ```gem 'capybara', '~> 3.40'``` e o ```gem 'selenium-webdriver', '~> 4.34'``` e colei no arquivo de dependências do projeto.
Rodei novamente o ```bundle install```
Após isso, abri o arquivo ```env.rb``` que estava na pasta ```suport``` para adicionar as configurações necessárias:
```
require "capybara"
require "capybara/cucumber"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end
```
Com isso, posso voltar ao ```cadastro_steps.rb``` e adicionar o comando ```visit "http://rocklov-web:3000/signup"``` para que ele possa acessar a página de cadastro.


