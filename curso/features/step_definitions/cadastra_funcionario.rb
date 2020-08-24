Quando('acesso a url de cadastro de funcionario') do
    click_on('Novo Funcionário')
end

Quando('preencho campo nome') do
    find_by_id('inputNome').set('Marcio_999')
end

Quando('preencho campo cpf') do
    find_by_id('cpf').set('719.620.270-82')
end

Quando('preencho campo sexo') do
    # find_by_id('slctSexo').click
    find_by_id('slctSexo').select('Masculino')
end

Quando('preencho campo admissao') do
    find_by_id('inputAdmissao').set('11/11/2000')
end

Quando('preencho campo cargo') do
    find_by_id('inputCargo').set('Desafio QA')
end

Quando('preencho campo salario') do
    find_by_id('dinheiro').set(rand(999999).to_s)
end

Quando('preencho campo tipo de contratacao') do
    find_by_id('clt').click
end

Quando('clico em Enviar') do
    find_button(class: 'cadastrar-form-btn').click
end

Entao('verifico se carregou a tela de empregados com mensagem de sucesso') do
    have_text('Funcionário removido com sucesso')
end