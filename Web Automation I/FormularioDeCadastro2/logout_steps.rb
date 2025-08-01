Quando('clico no botão de logout') do
    find('a', class: 'do-Logout').click
end

Então('sou redirecionado para a página de login') do
  expect(page).to have_current_path("http://rocklov-web:3000")
end