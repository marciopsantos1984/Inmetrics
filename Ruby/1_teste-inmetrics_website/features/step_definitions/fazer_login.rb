Quando('Acesso o Site') do
    @page = FazerLogin.new
    @page.load
    sleep 5
end

Quando('preencho campo Usuario e Senha') do
    @page.preencher_usuario
    
end

Quando('clico em Entre') do
    @page.clicar_entrar
    sleep 5 
end

Entao('verifico se carregou a tela de empregados') do
    expect(page).to have_current_path('http://www.inmrobo.tk/empregados/')
end