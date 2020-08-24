Quando('acesso a url de cadastro de funcionario') do
    @page = CadastraFuncionario.new
    @page.load
    sleep 5
end

Quando('preencho campo nome') do
    @page.preencher_nome
end

Quando('preencho campo cpf') do
    @page.preencher_cpf
end

Quando('preencho campo sexo') do
    @page.preencher_sexo
end

Quando('preencho campo admissao') do
    @page.preencher_admissao
end

Quando('preencho campo cargo') do
    @page.preencher_cargo
end

Quando('preencho campo salario') do
    @page.preencher_salario
end

Quando('preencho campo tipo de contratacao') do
    @page.preencher_contrato
end

Quando('clico em Enviar') do
    @page.clicar_enviar
    sleep 5
end

Entao('verifico a tela de empregados apresenta mensagem de cadastro feito com sucesso') do
    have_text('Usuário cadastrado com sucesso')
end