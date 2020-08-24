class CadastrarUsuario < SitePrism::Page

    set_url '/accounts/signup/'

    element :usuario, './/input[@name="username"]'
    element :senha, './/input[@name="pass"]'
    element :confirmSenha, './/input[@name="confirmpass"]'

    element :cadastrar, './/button[@class="login100-form-btn"]'

    def preencher_usuario
        user = 'Marcio_'+rand(999).to_s
        usuario.set user
        senha.set user
        confirmSenha.set user
    end

    def clicar_cadastrar
        cadastrar.click
    end
    

end