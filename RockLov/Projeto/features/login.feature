#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da RockLov
    Para que eu possa anunciar meus equipamentos musicais

    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "thiago.g.cunha.tc@gmail.com" e "pwd123"
        Então sou redirecionado para o Dashboard

    Esquema do Cenário: Tentativa de login

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
        |email_input                        |senha_input   |mensagem_output                            |
        |thiago.g.cunha.tc@gmail.com        |teste123      |Usuário e/ou senha inválidos.              |
        |thiago.g.cunha@gmail.com           |pwd123        |Usuário e/ou senha inválidos.             |
        |thiago.g.cunha.tcbatata.com       |pwd123        |Oops. Informe um email válido!             |
        |                                   |pwd123        |Oops. Informe um email válido!             |
        |thiago.g.cunha.tc@gmail.com        |              |Oops. Informe sua senha secreta!           |