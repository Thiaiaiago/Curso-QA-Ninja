# Testador MacGyver com Faker
Uma solução para a "queima" de massa de testes, quando as informações que a automação tenta colocar ao cadastrar já estão cadastradas.
Novamente na [biblioteca do Ruby](rubygems.org), procuro por "Faker", copio a linha ```gem 'faker', '~> 3.5', '>= 3.5.2'``` e colo no arquivo de dependências rodando o ```bundle install```novamente.
Importo o Faker no arquivo ```env.rb```, que fica assim:
```
require "capybara"
require "capybara/cucumber"
require "faker"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end
```
Em ```cadastor_steps.rb```, adiciono no lugar de um email colocado "à mao", o comando ```Faker::Internet.email```
