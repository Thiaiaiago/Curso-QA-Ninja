# Cucumber DataTable
Mudar a descrição do step trazendo a massa de teste pra dentro do cenário, mas sem perder a essência do comportamento.
Posso fazer isso colocando um argumento em formato de tabela usando pipes:
```
|nome   |email                      |senha  |
|Thiago |thiago.g.cunha.tc@gmail.com|pwd123 |
```
Ao tentar rodar a automação dessa forma o cucumber vai retornar uma sugestão de código que pode ser usada, mas para que ela seja funcional, é necessário transformar esse DataTable do Cucumber em um array de hashes usando ```table.hashes```
Após atribuir os valores aos seus respectivos lugares, fica desta forma:
```
Quando('submeto o seguinte formulário de cadastro:') do |table|
  user = table.hashes.first

  MongoDB.new.remove_user(user[:email])
  find("#fullName").set user[:nome]
  find("#email").set user[:email]
  find("#password").set user[:senha]
  click_button "Cadastrar"
end
```


