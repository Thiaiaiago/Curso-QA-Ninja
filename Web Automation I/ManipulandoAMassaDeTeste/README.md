# Manipulando a massa de teste
Para poder fazer a automação do cadastro sem poluir o banco de dados e sem conflitar com a regra de negócio de não permitir emails repetidos, a solução é apagar o email que será adicionado antes de cadastra-lo.
Para isso, é necessária a [biblioteca Mongo do Ruby](https://rubygems.org/gems/mongo), que tem documentação disponível no site do [MongoDB](https://www.mongodb.com/pt-br/docs/ruby-driver/current/get-started)
Agora dentro do cenário que submete o cadastro, adiciono ```client = Mongo::Client.new(['rocklov-db:27017'], database: 'rocklov')``` para conectar com o banco de dados.
Para acessar os usuários (uma coleção dentro do banco de dados), usei ```users = client[:users]```
E, por fim, para deletar todos os usuários com o mesmo email (caso, por algum motivo, haja mais que um), uso ```users.delete_many({email: "thiago.g.cunha.tc@gmail.com"})```

## Encapsulamento do método
Para tornar o código mais limpo, criei a pasta ```libs``` dentro da pastas ```support``` e criei o arquivo ```mongo.rb```, dentro dele, importei a biblioteca com o ```require "mongo"``` e criei a classe ```MongoDB``` com o método ```remove_user``` recebendo email como argumento.
Fazendo pequenas alterações na linha de deletar o usuário descrita acima, agora posso fazer a remoção de usuário de uma forma bem mais simples em qualquer cenário de qualquer uma das automações.
Após isso, fiz uma configuração dentro do ```mongo.rb``` para fazer a gravação dos logs dentro de um novo arquivo craido dentro de uma nova pasta dedicada apenas a logs.


