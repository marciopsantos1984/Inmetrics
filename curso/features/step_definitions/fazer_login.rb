Quando('clico em Entre') do
    click_on('Entre')
    # find_button(class: 'login100-form-btn').click
    sleep 5
end

Entao('verifico se carregou a tela de empregados') do
    expect(page).to have_current_path('http://www.inmrobo.tk/empregados/')
end