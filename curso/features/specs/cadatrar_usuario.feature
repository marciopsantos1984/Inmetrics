#language: pt

@cadastrar_usuario
Funcionalidade: Cadastrar Usuario

Cenario: Cadastrar Usuario com Sucesso
Quando acesso a url de cadastro
E preencho campo Usuario
E preencho campo Senha
E preencho campo Confirmar a Senha
E clico em Cadastrar
Entao verifico se carregou a tela de login