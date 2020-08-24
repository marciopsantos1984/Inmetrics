class CadastraFuncionario < SitePrism::Page

    set_url '/empregados/new_empregado'

    element :nome, './/input[@id="inputNome"]'
    element :cpf, './/input[@id="cpf"]'
    element :sexo, './/select[@id="slctSexo"]'
    element :admissao, './/input[@id="inputAdmissao"]'
    element :cargo, './/input[@id="inputCargo"]'
    element :salario, './/input[@id="dinheiro"]'
    element :contrato, './/input[@id="clt"]'
    
    element :enviar, './/input[@class="cadastrar-form-btn"]'

    def clicar_enviar 
        enviar.click
    end

    def preencher_nome 
        nome.set 'Marcio'
    end

    def preencher_cpf 
        cpf.set '719.620.270-82'
    end

    def preencher_sexo 
        sexo.select 'Masculino'
    end

    def preencher_admissao 
        admissao.set '12/12/2012'
    end

    def preencher_cargo 
        cargo.set 'Automatizador'
    end

    def preencher_salario 
        valor = rand(9999999).to_s
        salario.set valor
    end

    def preencher_contrato 
        contrato.click
    end

end