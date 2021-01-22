Dado('que acesso a tela de cadastro') do
  @cadastro.button_cadastro[0].click
end

Então('preencho com os dados necessarios') do
  @cadastro.input_cadastro[0].send_keys "Aline Araujo"
  @cadastro.input_cadastro[1].send_keys "Teste123"
  @cadastro.input_cadastro[2].send_keys "Teste123"
  click_button "Cadastrar"
end   

Quando('clico em {string}') do |string|
  click_link string
end

Então('preencho com as informações de cadastro') do
  @cadastro.input_nome.send_keys "Fernando de Noronha"
  @cadastro.input_cpf.send_keys "347.950.288-18"
  @cadastro.input_sexo.find(:option, "Masculino").select_option
  @cadastro.input_admissao.send_keys "20/12/2019"
  @cadastro.input_cargo.send_keys "Ajudante Geral"
  @cadastro.input_salario.send_keys "1200,00"
  @cadastro.input_regime.click
  sleep 2
  @cadastro.button_enviar.click
end

Quando('pesquiso por um funcionário') do
  find(:xpath, '//*[@id="tabela_filter"]/label/input').send_keys "Darla Farrell Davis"
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
