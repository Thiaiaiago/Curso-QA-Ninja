# Iniciando com BDD
Baixei o arquivo ```cadastro.txt``` e adicionei na pasta de projetos deste módulo.
```
Sendo um músico que possui equipamentos musicais
Quero fazer o meu cadastro na RockLov
Para que eu possa disponibilizalos para locação
```
### História de usuário:
1 - Ator, a pessoa que vai usar a funcionalidade.
2 - O que eu devo desenvolver, qual que é a funcionalidade que deve ser criada
3 - Valor de negócio que a funcionalidade trás

## Enriquecer a história usando BDD (Behavior-Driven Development)
Escrever cenários em primeira pessoa, de forma que é mais fácil se colocar no lugar do usuário.
Sempre questionar possíveis problemas que podem acontecer. Imaginar situações que saiam do padrão, que não deveriam acontecer e como contornar os possíveis problemas causados por elas.

# Quem planta BDD, colhe qualidade
Esta aula é uma demonstração de testes manuais seguindo o roteiro dos cenários definido na aula anterior.
Também é explicado mais um pouco sobre a função do QA e da importância dele no time.

# Automação é um benefício
É comentado nesta aula sobre o processo de desenvolvimento de uma funcionalidade e sobre como, conforme o projeto cresce, é necessário o uso de testes automatizados para não tornar a etapa de testes do QA um gargalo no desenvolvimento do sistema.

# Prazer Cucumber
### O que é o Cucumber?
O Cucumber é uma ferramenta que executa cenários através da sintaxe Gherkin

## Instalando o Cucumber
Abrir o CMD e instalar o bundle ```gem intall bundler```, após isso, vou acessar a pasta em que está o projeto e inicializar um projeto Ruby
```
cd c:\qaninja\a180\rocklov\projeto
bundle init
```
Acessar o site de [bibliotecas do Ruby](rubygems.org), buscar pelo Cucumber, copiar a linha de gem file e colar no arquivo gem file gerado pelo bundle
Após isso, voltar ao terminal e executar o comando ```bundle install```
 para fazer a instalação das bibliotecas do arquivo gem files.

## Montando a automação
Para criar a estrutura básica do cucumber, eu volto novamente ao CDM e digito: ```cucumber --init```
Após isso eu movo o arquivo cadastro.txt para a pasta features e renomeio ele para cadastro.feature para que o cucumber possa reconhece-lo.
Como estou usando o VSCode, vou em extensões e adiciono uma do cucumber para que fiquem destacada as key words do cucumber.
Para deixar no padrão do cucumber, uso a key word ```Funcionalidade``` para nomear a história. E adicionando ```#language: pt``` para fazer com que ele reconheça os comandos em português.

Adiciono a tag ```@temp``` ao primeiro cenário para que eu possa executar somente um desses cenários no cucumber usando o comando ```cucumber -t @temp```
Após isso eu copio o código sugerido pelo cucumber ao rodar e adiciono dentro de um novo arquivo nomeado ```cadastro_steps.rb``` dentro da pasta ```step_definition```.

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


# Adicionando ChormeDriver ao Path
A aula foi somente um rápido tutorial de como adicionar o chromedriver a uma pasta que foi adicionada ao path, de forma que fique acessível em todo o computador.

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


# Formulário de Cadastro 2
Aula dedicada a automatizar o segundo cenário da história de usuário.
Nota-se o reaproveitamento de trechos escritos exatamente iguais em cenários diferentes por parte do cucumber. ("Dado que acesso a página de cadastro")
A aula mostra como automatizar também o resto do cenário em que não é colocado o nome.
Tendo a aula acabado com menos da metade das automações feitas e visto que a próxima aula não abordava como fazer as automações faltantes, tomei a liberdade de eu mesmo testar meus conhecimentos e colocar em prática o que aprendi criando minhas próprias.
Com persistência, documentação e um pouco de ChatGPT na parte do logout (um pouco diferente do processo de login) consegui, além de upar os arquivos nas pastas respectivas deles do projeto, também vou coloca-los nessa para melhor visualização.

