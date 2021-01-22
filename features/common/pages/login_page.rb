# frozen_string_literal: true

# MAPEAMENTO DA PAGINA PRINCIPAL DO SITE
class LoginScreen < SitePrism::Page
  include Helpers
  include BaseScreen

  elements :page_login, '.text-center.sorting_as'
  elements :button_funcionarios, '.nav-link.text-uppercase.font-weight-bold'
end
