Before('@login') do 
  steps %(
    Dado que acesso a página de cadastro
    Quando submeto o seguinte formulário de cadastro:
      | nome      | email                          | senha  |
      | Thiago    | thiago.g.cunha.tc@gmail.com    | pwd123 |
    Então sou redirecionado para o Dashboard
  )
end
