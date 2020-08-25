describe 'Cadastrar' do

    context 'empregados' do
        it 'com sucesso' do
            @header = {
                'Content-Type': 'application/json',
                Accept: '*/*',
                Authorization: 'Basic aW5tZXRyaWNzOmF1dG9tYWNhbw=='
            }
            
            @body = {
                admissao: "11/11/2000",
                cargo: "AUTOMATIZADOR",
                comissao: "1.000,00",
                cpf: "545.489.270-00",
                departamentoId: 1,
                nome: "MARCIO",
                salario: "1.000,00",
                sexo: "m",
                tipoContratacao: "clt"
            }.to_json

            @empregados = Api.post('/empregado/cadastrar', body: @body, headers: @header)
            puts "code #{@empregados.response.code}"
            expect(@empregados.response.code).to eql ('202')
        end
            
    end
    
end