Quando('clica no primeiro excluir da lista') do
    @page = ExcluirFuncionario.new
    @page.clica_excluir
end

Entao('verifico a tela de empregados apresenta mensagem de exclusao feita com sucesso') do
    have_text('Funcionário removido com sucesso')
end