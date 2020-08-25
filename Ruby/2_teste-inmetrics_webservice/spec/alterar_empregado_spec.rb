describe 'Alterar' do

    context 'empregados' do
        it 'com sucesso' do
            @header = {
                'Content-Type': 'application/json',
                Accept: '*/*',
                Authorization: 'Basic aW5tZXRyaWNzOmF1dG9tYWNhbw=='
            }
            
            @body = {
                admissao: "11/11/2000",
                cargo: "ALTERADO",
                comissao: "1.000,00",
                cpf: "545.489.270-00",
                departamentoId: 1,
                nome: "ALTERADO",
                salario: "1.000,00",
                sexo: "m",
                tipoContratacao: "clt"
            }.to_json
            idEmployee = rand(1890).to_s
            @empregados = Api.put('/empregado/alterar/'+idEmployee, body: @body, headers: @header)
            puts "id do empregado #{idEmployee}"
            puts "body #{@body}"
            puts "code #{@empregados.response.code}"
            expect(@empregados.response.code).to eql ('202')
        end
       
        
    end
    
end