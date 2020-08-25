describe 'Consultar' do

    context 'empregados' do
        it 'com sucesso' do
            @header = {
                'Content-Type': 'application/json',
                Accept: '*/*',
                Authorization: 'Basic aW5tZXRyaWNzOmF1dG9tYWNhbw=='
            }
            
            idEmployee = rand(1890).to_s
            @empregados = Api.get('/empregado/list/'+idEmployee, headers: @header)
            puts "id do empregado #{idEmployee}"
            puts "code #{@empregados.response.code}"
            expect(@empregados.response.code).to eql ('202')
        end   
    end

    context 'lista de empregados' do
        it 'com sucesso' do
            @header = {
                'Content-Type': 'application/json',
                Accept: '*/*',
                Authorization: 'Basic aW5tZXRyaWNzOmF1dG9tYWNhbw=='
            }
            
            @empregados = Api.get('/empregado/list_all/', headers: @header)
            puts "quantidade de empregados #{@empregados.response['count']}"
            puts "code #{@empregados.response.code}"
            expect(@empregados.response.code).to eql ('200')
        end   
    end
end
