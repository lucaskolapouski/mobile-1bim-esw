# Parte 1 — Dart puro (Exercícios 1–4)

> Epic Jira: **Parte 1 — Domínio Dart**
> Fontes: enunciado § Parte 1, `contexto-projeto-divide.md` §§ 4 e 6.

---

## 1. Visão geral

Projeto Dart **sem Flutter**, executado com `dart run`. Modela o domínio **DivideAí** via orientação a objetos. Toda a Parte 1 é demonstrada por **uma única execução** de `bin/main.dart` que imprime um relatório com **4 blocos numerados** no terminal.

As classes desta parte alimentam a Parte 2 por **cópia manual** para `lib/models/`.

## 2. Escopo

### Dentro do escopo
- Classes `Despesa`, `DespesaParcelada`, `ContaCompartilhada` em `bin/models/`
- Relatório terminal com blocos [1]–[4] — **Confirmado no enunciado**
- Testes unitários em `test/` com `dart test` — **Confirmado no contexto** §6
- `dart analyze` sem errors — **Confirmado no enunciado**

### Fora do escopo
- Widgets, telas, pacotes Flutter
- Persistência em arquivo ou banco
- Pacote compartilhado entre Parte 1 e Parte 2

## 3. Estrutura de arquivos esperada

```text
parte1-dart/
├── pubspec.yaml
├── bin/
│   ├── main.dart
│   └── models/
│       ├── despesa.dart
│       ├── despesa_parcelada.dart
│       └── conta_compartilhada.dart
└── test/
    ├── despesa_test.dart
    ├── despesa_parcelada_test.dart
    ├── conta_compartilhada_test.dart
    └── encapsulamento_test.dart
```

## 4. Entidades

Ver especificação completa em [`dart/especificacao-classes.md`](../dart/especificacao-classes.md).

| Classe | Exercício | Relação |
|---|---|---|
| `Despesa` | 1 | entidade principal |
| `DespesaParcelada` | 2 | `extends Despesa` |
| `ContaCompartilhada` | 3, 4 | composição + encapsulamento |

## 5. Relatório terminal — formato obrigatório

```
===== [1] ENTIDADE PRINCIPAL =====
Despesa: Pizza | R$ 45.00 | pago por Ana | 30/08/2026 | Categoria: Restaurante

===== [2] HERANÇA =====
Despesa comum -> ficha: "Passagem de ônibus | R$ 120.00 | pago por Bruno"
DespesaParcelada -> ficha: "Passagem de ônibus | R$ 120.00 | pago por Bruno, em 3 parcelas de R$ 40.00"

===== [3] COMPOSIÇÃO =====
Conta "Viagem de fim de semana" contém 3 despesas:
  - Pizza
  - Passagem de ônibus
  - Combustível

===== [4] ENCAPSULAMENTO =====
Conta "Viagem de fim de semana" -> total geral (calculado): R$ 350.00
Conta "Viagem de fim de semana" -> valor por pessoa (calculado): R$ 87.50
Após adicionar "Estacionamento" (R$ 30.00):
  -> total geral: R$ 380.00
  -> valor por pessoa: R$ 95.00
```

Valores e nomes podem variar; a **estrutura** dos 4 blocos é obrigatória.

## 6. Requisitos funcionais

| ID | Exercício | Descrição |
|---|---|---|
| RF-EX-01 | 1 | Classe `Despesa` com ≥4 **tipos** distintos (`String`, `int`, `double`, `DateTime`), construtor nomeado com `required` e opcionais com default (`quantidade=1`, `categoria='Geral'`) |
| RF-EX-02 | 2 | `DespesaParcelada extends Despesa` com `super`, `@override` em `ficha()` |
| RF-EX-03 | 3 | `ContaCompartilhada` com `List<Despesa>` e `adicionar()` |
| RF-EX-04 | 4 | `_despesas` privada; getters `totalGeral` e `valorPorPessoa` calculados |

## 7. Regras de negócio

| ID | Regra |
|---|---|
| RN-DOM-01 | `valorPorPessoa = totalGeral / participantes.length` |
| RN-DOM-02 | `totalGeral` nunca é armazenado em campo separado — sempre calculado |
| RN-DOM-03 | `categoria` default `'Geral'` quando omitida |
| RN-DOM-04 | `data` pode default `DateTime.now()` no construtor |
| RN-DOM-05 | `DespesaParcelada` deve passar no teste "todo X é um Y" |
| RN-DOM-06 | Conta não "é uma" despesa — relação é composição |

## 8. Requisitos não funcionais

| ID | Requisito |
|---|---|
| RNF-ENT-01 | `dart analyze` sem errors |
| RNF-ENT-02 | `dart test` passa todos os casos |
| RNF-ENT-03 | Relatório imprime 4 blocos em ordem, com cabeçalhos `===== [N] ... =====` |
| RNF-ENT-04 | Bloco [4] mostra valores **diferentes** antes e depois de `adicionar()` |

## 9. Exercícios detalhados

| # | Documento |
|---|---|
| 1 | [01-entidade-principal.md](exercicios/01-entidade-principal.md) |
| 2 | [02-heranca.md](exercicios/02-heranca.md) |
| 3 | [03-composicao.md](exercicios/03-composicao.md) |
| 4 | [04-encapsulamento.md](exercicios/04-encapsulamento.md) |

## 10. BDD

Cenários em [`bdd/parte1-dominio.feature`](../bdd/parte1-dominio.feature).

## 11. Cards Scrumban (Epic Parte 1)

| Card | Exercício | Tamanho | Dependências |
|---|---|---|---|
| DIV-C-01 | 1 — Entidade principal | P | — |
| DIV-C-02 | 2 — Herança | P | DIV-C-01 |
| DIV-C-03 | 3 — Composição | P | DIV-C-01 |
| DIV-C-04 | 4 — Encapsulamento | M | DIV-C-03 |
| DIV-C-04b | Relatório `main.dart` (4 blocos) | M | DIV-C-01..04 |
| DIV-C-04c | Suíte `dart test` Parte 1 | M | DIV-C-01..04 |

Detalhes em [`scrumban/backlog-parte1.md`](../scrumban/backlog-parte1.md).

## 12. Definição de pronto — Parte 1

1. `dart run bin/main.dart` imprime os 4 blocos corretamente.
2. `dart analyze` → 0 errors.
3. `dart test` → todos passam.
4. README raiz: justificativa composição vs herança preenchida.
5. Classes prontas para cópia na Parte 2.
