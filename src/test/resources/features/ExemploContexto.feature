# language: pt

@regressivo
Funcionalidade: Deletar uma entrega

  Contexto: Cadastro bem-sucedido de entrega
    Dado que eu tenha os seguintes dados da entrega:
      | campo          | valor        |
      | numeroPedido   | 1            |
      | nomeEntregador | Ana Silva    |
      | statusEntrega  | EM_SEPARACAO |
      | dataEntrega    | 2024-08-22   |
    Quando eu enviar a requisicao para o endpoint "/entregas"
    Então o status code da resposta deve ser 201

  Cenario: Deve ser  possivel deletar uma entrega
    Dado que eu recupere o ID da entrega criada no contexto
    Quando eu enviar a requisicao com o ID para o endpoint "/entregas" de delecao de entregas
    Então o status code da resposta deve ser 204
