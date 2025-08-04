#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da RockLov
    Para que eu possa anunciar meus equipamentos musicais

    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "thiago.g.cunha.tc@gmail.com" e "pwd123"
        Então sou redirecionado para o Dashboard

    Cenario: Senha incorreta

        Dado que acesso a página principal
        Quando submeto minhas credenciais com senha incorreta
        Então vejo uma mensagem de alerta: Usuário e/ou senha inválidos.

    Cenario: Email não cadastrado

        Dado que acesso a página principal
        Quando submeto minhas credenciais com email que não existe na RockLov
        Então vejo uma mensagem de alerta: Usuário e/ou senha inválidos.

    Cenario: Email incorreto

        Dado que acesso a página principal
        Quando submeto minhas credenciais com email incorreto
        Então vejo uma mensagem de alerta: Oops. Informe um email válido!

    Cenario: Email não informado

        Dado que acesso a página principal
        Quando submeto minhas credenciais sem o email
        Então vejo uma mensagem de alerta: Oops. Informe um email válido!

    Cenario: Senha não informada

        Dado que acesso a página principal
        Quando submeto minhas credenciais sem a senha
        Então vejo uma mensagem de alerta: Oops. Informe sua senha secreta!

