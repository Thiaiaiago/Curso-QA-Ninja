#language: pt

Funcionalidade: Logout
    Sendo um usuário logado
    Quero acessar deslogar do RockLov
    Para que eu possa acessar outra conta

    @logout
    Cenario: Logout do usuário

        Dado que acesso a página principal
        E submeto minhas credenciais válidas
        Quando clico no botão de logout
        Então sou redirecionado para a página de login
