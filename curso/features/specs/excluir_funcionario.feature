#language: pt

@excluir_funcionario
Funcionalidade: Excluir Funcionario

Cenario: Excluir Funcionario com Sucesso
Quando Acesso o Site
E preencho campo Usuario
E preencho campo Senha
E clico em Entre
E clica no primeiro excluir da lista
Entao verifico se atualizou a tela de empregados com mensagem de sucesso