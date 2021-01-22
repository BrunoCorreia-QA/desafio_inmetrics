module CadastroModule

    def cadastrar_funcionário
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


end
