Quando('clica no primeiro excluir da lista') do
    first('//button[@id="delete-btn"]').click
end

Entao('verifico se atualizou a tela de empregados com mensagem de sucesso') do
    page.all(:css, '.alert')
    expect(page).to have_current_path('http://www.inmrobo.tk/empregados')
end

  
  
  