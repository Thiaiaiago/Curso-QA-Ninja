#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa dispnibiliza-los para locação

    Cenario: Novo equipo:
        Dado que estou logado
        E acesso o formulário de cadastro de anúncios
        E que eu tenho o seguinte equipamento:
            | thumb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item 
        Então devo ver esse item no meu Dashboard