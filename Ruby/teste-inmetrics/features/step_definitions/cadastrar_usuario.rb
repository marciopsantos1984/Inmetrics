Quando('acesso a url de cadastro') do
    @page = CadastrarUsuario.new
    @page.load
    sleep 5
end

Quando('preencho campos Usuario, Senha e Confirmar Senha') do
    @page.preencher_usuario
end

Quando('clico em Cadastrar') do
    @page.clicar_cadastrar
    sleep 5
end

Entao('verifico se carregou a tela de login') do
    expect(page).to have_current_path('http://www.inmrobo.tk/accounts/login/', url: true)    
end