# Cadastro de anúncios 1
É feita a hisória de usuário definindo os inputs usando DataTable.
```
Cenario: Novo equipo:
        Dado que eu tenho o seguinte equipamento:
            | thumb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item 
        Então devo ver esse item no meu Dashboard
```
Após isso, rodando ```cucumber -d features/specs/cadastro-anuncios.feature``` o cucumber já da os step definitions.
Para implementar as definições dos steps:
No ```Dado``` é usado outro método para buscar transformar a tabela descrita acima em DataTable, o ```table.rows_hash```
Enquanto isso no ```Quando``` também usamos um método diferente de encontrar o valor pelo CSS Selector, usando os caracteres ```*```, ```$``` e ```^``` antes do ```=``` para representar ```contém```, ```termina com``` e ```começa com```
Também é feita um provocação ao final da aula se o cenário abaixo é a melhor forma de implementar uma pré condição de login
```
Dado que estou logado
        E acesso o formulário de cadastro de anúncios
        E que eu tenho o seguinte equipamento:
            | thumb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item 
        Então devo ver esse item no meu Dashboard
```

