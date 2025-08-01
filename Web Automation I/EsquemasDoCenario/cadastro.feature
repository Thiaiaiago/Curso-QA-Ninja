#language: pt

Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação

    @cadastro
    Cenario: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            |nome   |email                      |senha  |
            |Thiago |thiago.g.cunha.tc@gmail.com|pwd123 |
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentativa de cadastro

        Cenario: Submeter cadastro sem o nome

            Dado que acesso a página de cadastro
            Quando submeto o seguinte formulário de cadastro:
                |nome           |email          |senha          |
                |<nome_input>   |<email_input>  |<senha_input>  |
            Então vejo a mensagem de alerta: "<mensagem_output>"

            Exemplos: 
            |nome_input|email_input|senha_input|mensagem_output|
            |       |thiago.g.cunha.tc@gmail.com|pwd123 |Oops. Informe seu nome completo!|
            |Thiago |                           |pwd123 |Oops. Informe um email válido!  |
            |Thiago |thiago.g.cunha.tc@gmail.com|       |Oops. Informe sua senha secreta!|
            |Thiago |thiago.g.cunha.tc$gmail.com|pwd123 |Oops. Informe um email válido!  |
            |Thiago |thiago.g.cunha.tc*gmail.com|pwd123 |Oops. Informe um email válido!  |