Quando('clicar no primeiro alterar da lista') do
    @page = AlteraFuncionario.new
    @page.clica_alterar
end

Entao('verifico a tela de empregados apresenta mensagem de alteracao feita com sucesso') do
    have_text('Informações atualizadas com sucesso')
end