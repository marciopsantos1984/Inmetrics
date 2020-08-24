class ExcluirFuncionario < SitePrism::Page 

    element :exclui, './/tr[@class="odd"][1]/td[@class="text-center"][5]/a[1]/button[@id="delete-btn"]'

    def clica_excluir
        exclui.click
    end

end