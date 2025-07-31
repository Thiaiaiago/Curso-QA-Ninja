# Prazer Cucumber
### O que é o Cucumber?
O Cucumber é uma ferramenta que executa cenários através da sintaxe Gherkin

## Instalando o Cucumber
Abrir o CMD e instalar o bundle
```
gem intall bundler
```
, após isso, vou acessar a pasta em que está o projeto e inicializar um projeto Ruby
```
cd c:\qaninja\a180\rocklov\projeto
bundle init
```
Acessar o site de [bibliotecas do Ruby](rubygems.org), buscar pelo Cucumber, copiar a linha de gem file e colar no arquivo gem file gerado pelo bundle
Após isso, voltar ao terminal e executar o comando 
```
bundle install
```
 para fazer a instalação das bibliotecas do arquivo gem files.

## Montando a automação
Para criar a estrutura básica do cucumber, eu volto novamente ao CDM e digito:
```
cucumber --init
```
Após isso eu movo o arquivo cadastro.txt para a pasta features e renomeio ele para cadastro.feature para que o cucumber possa reconhece-lo.
Como estou usando o VSCode, vou em extensões e adiciono uma do cucumber para que fiquem destacada as key words do cucumber.
Para deixar no padrão do cucumber, uso a key word ```Funcionalidade``` para nomear a história. E adicionando ```#language: pt``` para fazer com que ele reconheça os comandos em português.

Adiciono a tag ```@temp``` ao primeiro cenário para que eu possa executar somente um desses cenários no cucumber usando o comando ```cucumber -t @temp```
Após isso eu copio o código sugerido pelo cucumber ao rodar e adiciono dentro de um novo arquivo nomeado ```cadastro_steps.rb``` dentro da pasta ```step_definition```.
