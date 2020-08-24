class AlteraFuncionario < SitePrism::Page 

    element :nome, './/input[@id="inputNome"]'
    element :cpf, './/input[@id="cpf"]'
    element :sexo, './/select[@id="slctSexo"]'
    element :admissao, './/input[@id="inputAdmissao"]'
    element :cargo, './/input[@id="inputCargo"]'
    element :salario, './/input[@id="dinheiro"]'
    element :contrato, './/input[@id="clt"]'

    element :altera, './/tr[@class="odd"][1]/td[@class="text-center"][5]/a[2]/button[@class="btn btn-warning"]'
    element :enviar, './/input[@class="cadastrar-form-btn"]'

    def clica_alterar
        altera.click
    end

    def clicar_enviar 
        enviar.click
    end

    def preencher_nome 
        nome.set 'Alterado'
    end

    def preencher_cpf 
        cpf.set '719.620.270-82'
    end

    def preencher_sexo 
        sexo.select 'Masculino'
    end

    def preencher_admissao 
        admissao.set '11/11/2012'
    end

    def preencher_cargo 
        cargo.set 'Alterado'
    end

    def preencher_salario 
        valor = rand(9999).to_s
        salario.set valor
    end

    def preencher_contrato 
        contrato.click
    end
    

end