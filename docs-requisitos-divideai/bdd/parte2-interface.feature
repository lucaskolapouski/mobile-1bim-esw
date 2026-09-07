# language: pt
# Parte 2 — Interface Flutter (Exercícios 5–10)

Funcionalidade: Tela inicial do DivideAí
  Como usuário do app
  Quero ver o resumo da conta e a lista de despesas
  Para acompanhar quanto cada um deve pagar

  # CT-P2-01 — RF-EX-05
  Cenário: Tela inicial exibe AppBar e totais
    Dado que abro o aplicativo DivideAí
    Então vejo uma AppBar com o nome do aplicativo
    E vejo o total geral calculado no topo da tela

  # CT-P2-02 — RF-EX-05 / RF-EX-04
  Cenário: Total no topo vem do getter da conta
    Dado que a conta de exemplo tem total geral de 380.00
    Quando a tela inicial é exibida
    Então o total exibido corresponde ao totalGeral da ContaCompartilhada

  # CT-P2-03 — RF-EX-06
  Cenário: Itens aparecem como cartões estilizados
    Dado que estou na tela inicial
    Então cada despesa é exibida em um cartão com descrição, valor e pagador

  # CT-P2-04 — RF-EX-07
  Cenário: Lista abre com seis itens sem ação do usuário
    Quando abro o aplicativo pela primeira vez na sessão
    Então vejo exatamente 6 despesas na lista
    E não preciso tocar em botão para carregar dados

  # CT-P2-05 — RF-EX-07
  Cenário: Lista é rolável
    Dado que existem 6 itens na lista
    Quando a lista não cabe na altura da tela
    Então posso rolar para ver todos os itens

Funcionalidade: Detalhe da despesa
  Como usuário
  Quero ver mais informações de uma despesa
  Para conferir data e categoria

  # CT-P2-06 — RF-EX-08
  Cenário: Toque no item abre detalhe correto
    Dado que estou na tela inicial com várias despesas
    Quando toco na despesa "Uber" no meio da lista
    Então abro a tela de detalhe
    E vejo a descrição "Uber"

  # CT-P2-07 — RF-EX-08
  Cenário: Detalhe mostra campos extras em relação ao cartão
    Dado que abri o detalhe de uma despesa
    Então vejo a data da despesa
    E vejo a categoria da despesa

Funcionalidade: Cadastro de nova despesa
  Como usuário
  Quero cadastrar uma nova despesa
  Para incluir um gasto na divisão

  # CT-P2-08 — RF-EX-09
  Cenário: Formulário com no máximo três campos
    Quando abro a tela de cadastro pelo FAB
    Então vejo no máximo 3 campos de entrada
    E vejo o botão Confirmar

  # CT-P2-09 — RF-EX-09
  Cenário: Confirmar cria despesa com defaults
    Dado que preenchi descrição "Lanche", valor "15.50" e pagador "Carla"
    Quando toco em Confirmar
    Então uma Despesa é retornada à tela anterior
    E a categoria da despesa é "Geral"

Funcionalidade: Atualização de estado na lista
  Como usuário
  Quero que a lista e os totais atualizem após cadastro
  Para ver o impacto do novo gasto imediatamente

  # CT-P2-10 — RF-EX-10
  Cenário: Nova despesa aparece na lista
    Dado que a lista tinha 6 itens
    Quando confirmo o cadastro de uma nova despesa
    Então a lista exibe 7 itens
    E vejo a nova despesa na lista

  # CT-P2-11 — RF-EX-10 / RF-EX-04
  Cenário: Total atualiza após cadastro sem reiniciar o app
    Dado que o total geral inicial era 380.00
    Quando adiciono uma despesa de 20.00 via cadastro
    Então o total exibido no topo é 400.00
    E não reiniciei o aplicativo
