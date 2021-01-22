module CadastroModule

    def cadastrar_funcionario
        input_nome.send_keys "Fernando de Noronha"
        input_cpf.send_keys "347.950.288-18"
        input_sexo.find(:option, "Masculino").select_option
        input_admissao.send_keys "20/12/2019"
        input_cargo.send_keys "Ajudante Geral"
        input_salario.send_keys "1200,00"
        input_regime.click
        sleep 2
        button_enviar.click
    end


end
