# language: pt
# Parte 1 — Domínio Dart (Exercícios 1–4)
# Fonte: enunciado + contexto-projeto-divide.md

Funcionalidade: Modelagem do domínio DivideAí em Dart puro
  Como desenvolvedor do DivideAí
  Quero o domínio demonstrável no terminal
  Para validar entidade, herança, composição e encapsulamento

  # CT-P1-01 — RF-EX-01
  Cenário: Construtor com parâmetros nomeados e required
    Dado que crio uma Despesa com descrição "Pizza", valor 45.0 e pagador "Ana"
    Quando leio os atributos do objeto
    Então a descrição é "Pizza"
    E o valor é 45.0
    E o pagador é "Ana"

  # CT-P1-02 — RF-EX-01
  Cenário: Categoria assume valor padrão Geral
    Dado que crio uma Despesa sem informar categoria
    Quando leio a categoria
    Então o valor é "Geral"

  # CT-P1-02b — RF-EX-01
  Cenário: Quantidade assume valor padrão 1 (tipo int — 4º tipo distinto)
    Dado que crio uma Despesa sem informar quantidade
    Quando leio a quantidade
    Então o valor é 1

  # CT-P1-02c — RF-EX-01
  Cenário: Despesa possui pelo menos quatro tipos de atributo diferentes
    Dado a classe Despesa
    Então existem atributos dos tipos String, int, double e DateTime

  # CT-P1-03 — RF-EX-02
  Cenário: DespesaParcelada é uma Despesa
    Dado que crio uma DespesaParcelada válida
    Então a instância é do tipo Despesa

  # CT-P1-04 — RF-EX-02
  Cenário: ficha da parcelada difere da despesa comum
    Dado uma Despesa comum e uma DespesaParcelada com mesma descrição base
    Quando chamo ficha() em ambas
    Então as strings retornadas são diferentes
    E a ficha da parcelada contém informação sobre parcelas

  # CT-P1-05 — RF-EX-03
  Cenário: Conta inicia com despesas informadas
    Dado uma ContaCompartilhada com 3 despesas iniciais
    Quando consulto a quantidade de despesas
    Então o valor é 3

  # CT-P1-06 — RF-EX-03
  Cenário: adicionar incrementa a coleção
    Dado uma ContaCompartilhada vazia
    Quando adiciono uma Despesa
    Então a quantidade de despesas é 1

  # CT-P1-07 — RF-EX-04
  Cenário: totalGeral é soma dos valores
    Dado uma conta com despesas de 100.0 e 50.0
    Quando leio totalGeral
    Então o valor é 150.0

  # CT-P1-08 — RF-EX-04
  Cenário: totalGeral muda após adicionar sem atribuição manual
    Dado uma ContaCompartilhada com total geral conhecido
    Quando adiciono uma nova Despesa
    Então totalGeral é diferente do valor anterior
    E totalGeral reflete a soma correta

Funcionalidade: Relatório terminal da Parte 1
  Como desenvolvedor do DivideAí
  Quero executar dart run uma única vez
  Para exibir os quatro blocos do domínio em ordem

  # CT-P1-09 — RF-EX-01..04
  Cenário: Relatório imprime quatro blocos em ordem
    Quando executo dart run bin/main.dart
    Então a saída contém "===== [1] ENTIDADE PRINCIPAL ====="
    E a saída contém "===== [2] HERANÇA ====="
    E a saída contém "===== [3] COMPOSIÇÃO ====="
    E a saída contém "===== [4] ENCAPSULAMENTO ====="

  # CT-P1-10 — RF-EX-04
  Cenário: Bloco 4 mostra totais antes e depois de adicionar
    Quando executo o relatório da Parte 1
    Então o bloco 4 exibe total geral antes de adicionar item
    E após adicionar "Estacionamento" os totais exibidos são diferentes
