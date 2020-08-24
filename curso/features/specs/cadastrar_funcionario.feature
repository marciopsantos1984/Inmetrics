#language: pt

@cadastrar_funcionario
Funcionalidade: Cadastrar Funcionario

Cenario: Cadastrar Funcionario com Sucesso
Quando Acesso o Site
E preencho campo Usuario
E preencho campo Senha
E clico em Entre
E acesso a url de cadastro de funcionario
E preencho campo nome
E preencho campo cpf
E preencho campo sexo
E preencho campo admissao
E preencho campo cargo
E preencho campo salario
E preencho campo tipo de contratacao
E clico em Enviar
Entao verifico se carregou a tela de empregados com mensagem de sucesso