 #language: pt

@alterar_funcionario
Funcionalidade: Alterar Funcionario

Cenario: Alterar Funcionario com Sucesso
Quando Acesso o Site
E preencho campo Usuario e Senha
E clico em Entre
E clicar no primeiro alterar da lista
E preencho campo nome
E preencho campo cpf
E preencho campo sexo
E preencho campo admissao
E preencho campo cargo
E preencho campo salario
E preencho campo tipo de contratacao
E clico em Enviar
Entao verifico a tela de empregados apresenta mensagem de alteracao feita com sucesso