
Quando('acesso a url de cadastro') do
    visit '/accounts/signup/'
    # @page = CadastrarUsuario.new
    sleep 5
end

Quando('preencho campo Usuario') do
    find('.//input[@name="username"]').send_keys('Marcio_999')
    sleep 5
end

Quando('preencho campo Senha') do
    find('.//input[@name="pass"]').send_keys('Marcio_999')
    sleep 5
end

Quando('preencho campo Confirmar a Senha') do
    find('.//input[@name="confirmpass"]').send_keys('Marcio_999')
end

Quando('clico em Cadastrar') do
    find_button(class: 'login100-form-btn').click
end

Entao('verifico se carregou a tela de login') do
    expect(page).to have_current_path('http://www.inmrobo.tk/accounts/login/')
    sleep 5
end



  