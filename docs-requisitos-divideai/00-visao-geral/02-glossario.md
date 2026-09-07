# Glossário — DivideAí

| Termo | Definição |
|---|---|
| **DivideAí** | Nome do app; divisor de despesas genérico ("rachar a conta") |
| **Despesa** | Entidade principal; item individual de gasto (descrição, valor, pagador, data, categoria) |
| **DespesaParcelada** | Subtipo de `Despesa` paga em parcelas; usa herança (`extends`) |
| **ContaCompartilhada** | Agrupador que contém lista de despesas; usa composição ("tem um") |
| **Bloco [N]** | Seção numerada do relatório impresso no terminal (Parte 1); N = 1..4 |
| **Tabela de rastreio** | Tabela no README que liga feature → arquivo:linha → evidência visível |
| **Evidência visível** | Resultado observável no terminal ou na UI ao executar o fluxo |
| **Getter calculado** | Propriedade `get` que deriva valor da lista interna a cada chamada (não armazena em campo) |
| **Sessão única** | App sem persistência entre execuções; dados de exemplo na abertura |
| **Template de exemplo** | `ContaCompartilhada` pré-populada com 6 despesas ao abrir o app |
| **Cartão** | Widget `CartaoDespesa` que renderiza um item na lista |
| **FAB** | Floating Action Button; abre tela de cadastro |
| **setState** | Mecanismo Flutter que avisa o framework para reconstruir a UI após mudança de estado |
| **TextEditingController** | Controlador que liga campo de texto à lógica do formulário |
| **Composição** | Relação "tem um" — `ContaCompartilhada` tem `List<Despesa>` |
| **Herança** | Relação "é um" — `DespesaParcelada` é uma `Despesa` |
| **Encapsulamento** | Lista `_despesas` privada; acesso via métodos e getters públicos |
| **RF-EX-NN** | Requisito funcional da feature NN |
| **RN-DOM-NN** | Regra de negócio do domínio |
| **RNF-ENT-NN** | Requisito não funcional de entrega |
| **DIV-C-NN** | Card Jira da feature NN |
| **CT-P1-NN / CT-P2-NN** | Cenário de teste BDD |
