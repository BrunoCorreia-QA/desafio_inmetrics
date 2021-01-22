#utf-8 
# language: pt
@cadastro
@inmetrics
Funcionalidade: Criar cadastro dentro da plataforma

 @cadastro01
    Cenário: Criar cadastro do usuario dentro da plataforma
    Dado que acesso a tela de cadastro
    Então preencho com os dados necessarios
    
 @cadastro02
    Cenário: Criar cadastro de um funcionario dentro da area logada
    Dado que preencho com os meus dados para realizar o login
    Quando clico em "Novo Funcionário"
    Então preencho com as informações de cadastro

 @cadastro03
    Cenário: Editar cadastro funcionario
    Dado que preencho com os meus dados para realizar o login
    Quando pesquiso por um funcionário
    E clico em editar
    Então edito uma informação do cadastro
    E vejo a mensagem de "SUCESSO! Informações atualizadas com sucesso"

 @cadastro04
    Cenário: Excluir funcionario
    Dado que preencho com os meus dados para realizar o login
    Quando pesquiso por um funcionário
    E clico em excluir
    Então vejo a mensagem de "SUCESSO! Funcionário removido com sucesso"
