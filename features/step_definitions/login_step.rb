Dado('que preencho com os meus dados para realizar o login') do
  @cadastro.input_cadastro[0].send_keys("Bruno Almeida")
  @cadastro.input_cadastro[1].send_keys("Teste123")
  click_button "Entre"
end

Então('tenha acesso a area logada da plataforma') do
  expect(page).to(have_content('FUNCIONÁRIOS', wait: 30))
end
