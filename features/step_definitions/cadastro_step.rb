Dado('que acesso a tela de cadastro') do
  @cadastro.button_cadastro[0].click
end

Então('preencho com os dados necessarios') do
  @cadastro.input_cadastro[0].send_keys "Viviane Araujo"
  @cadastro.input_cadastro[1].send_keys "Teste123"
  @cadastro.input_cadastro[2].send_keys "Teste123"
  click_button "Cadastrar"
end   

Quando('clico em {string}') do |string|
  click_link string
end

Então('preencho com as informações de cadastro') do
  @cadstro.cadastrar_funcionário
end

Quando('pesquiso por um funcionário') do
  find(:xpath, '//*[@id="tabela_filter"]/label/input').send_keys "Bobby Marvin Mante"
end

Quando('clico em editar') do
  @cadastro.button_editar.click
end

Então('edito uma informação do cadastro') do
  @cadastro.input_cargo.send_keys [:control, 'a'], :space
  @cadastro.input_cargo.send_keys "Ajudante Geral"
  @cadastro.button_enviar.click
end

Então('vejo a mensagem de {string}') do |string|
  @cadastro.mensagem_sucesso.visible?
  expect(page).to(have_content(string, wait: 30))
end

E("clico em excluir") do 
  @cadastro.button_excluir.click
end   
