#language: pt

Funcionalidade: Login de usuário
    Sendo um usuário cadastrado
    Quero acessar o sistema da RockLov
    Para que eu possa anunciar meus equipamentos musicais

    @login
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais válidas
        Então sou redirecionado para o Dashboard

    @login_senha_incorreta
    Cenario: Senha incorreta

        Dado que acesso a página principal
        Quando submeto minhas credenciais com senha incorreta
        Então vejo uma mensagem de alerta: Usuário e/ou senha inválidos.

    @login_email_nao_cadastrado
    Cenario: Email não cadastrado

        Dado que acesso a página principal
        Quando submeto minhas credenciais com email que não existe na RockLov
        Então vejo uma mensagem de alerta: Usuário e/ou senha inválidos.

    @login_email_incorreto
    Cenario: Email incorreto

        Dado que acesso a página principal
        Quando submeto minhas credenciais com email incorreto
        Então vejo uma mensagem de alerta: Oops. Informe um email válido!

    @login_sem_email
    Cenario: Email não informado

        Dado que acesso a página principal
        Quando submeto minhas credenciais sem o email
        Então vejo uma mensagem de alerta: Oops. Informe um email válido!
        
    @login_sem_senha    
    Cenario: Senha não informada

        Dado que acesso a página principal
        Quando submeto minhas credenciais sem a senha
        Então vejo uma mensagem de alerta: Oops. Informe sua senha secreta!

