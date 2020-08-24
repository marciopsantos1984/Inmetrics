Quando('Acesso o Site') do
    visit '/accounts/login/'
    sleep 5
end

Entao('Verifico se carregou a pagina corretamente') do
    expect(page).to have_current_path('http://www.inmrobo.tk/accounts/login/')
end