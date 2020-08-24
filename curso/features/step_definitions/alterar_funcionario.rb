Quando('clicar no primeiro alterar da lista') do
    first('//button[@class="btn btn-warning"]').click
end
  
Entao('verifico se atualizou com mensagem de sucesso') do
    have_text('Informações atualizadas com sucesso')
end
  