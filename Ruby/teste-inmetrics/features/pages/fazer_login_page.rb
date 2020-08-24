class FazerLogin < SitePrism::Page

    set_url '/accounts/login/'

    element :usuario, './/input[@name="username"]'
    element :senha, './/input[@name="pass"]'
    
    element :entrar, './/button[@class="login100-form-btn"]'

    def preencher_usuario
        usuario.set 'Marcio_000'
        senha.set 'Marcio_000'
    end

    def clicar_entrar
        entrar.click
    end
    

end