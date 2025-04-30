# language: pt

@regressivo
Funcionalidade: Validar o contrato ao realizar um cadastro bem-sucedido de entrega

  Cenario: Validar contrato do cadastro bem-sucedido de entrega
    Dado que eu tenha os seguintes dados da entrega:
      | campo          | valor        |
      | numeroPedido   | 1            |
      | nomeEntregador | Ana Silva    |
      | statusEntrega  | EM_SEPARACAO |
      | dataEntrega    | 2024-08-22   |
    Quando eu enviar a requisicao para o endpoint "/entregas"
    Então o status code da resposta deve ser 201
    E que o arquivo de contrato esperado e o "Cadastro bem-sucedido de entrega"
    Então a resposta da requisicao deve estar em conformidade com o contrato selecionado