# frozen_string_literal: true

# MAPEAMENTO DA PAGINA PRINCIPAL DO SITE
class CadastroScreen < SitePrism::Page
  include Helpers
  include BaseScreen
  include CadastroModule

  elements :button_cadastro, '.nav-link.text-uppercase.font-weight-bold'
  elements :input_cadastro, '.input100'
  element :input_nome, '#inputNome'
  element :input_cargo, '#inputCargo'
  element :input_cpf, '#cpf'
  element :input_salario, '#dinheiro'
  element :input_sexo, '#slctSexo'
  element :input_admissao, '#inputAdmissao'
  element :input_regime, '#clt'
  element :button_enviar, '.cadastrar-form-btn'
  element :editar_func, '.btn.btn-warning'
  element :button_editar, '.btn.btn-warning'
  element :mensagem_sucesso, '.alert.alert-success.alert-dismissible.fade.show'
  element :button_excluir, '#delete-btn'


end
