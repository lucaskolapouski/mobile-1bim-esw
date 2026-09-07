# DOM-01 — Entidade principal (`Despesa`)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-4](https://jaoromanodev.atlassian.net/browse/DIV-4) · `DOM-01` |
| **RF** | RF-EX-01 |
| **RN** | RN-DOM-01 |
| **Recurso obrigatório** | `class` com construtor de parâmetros nomeados |
| **Conceito obrigatório** | `required` |
| **Evidência** | Bloco `[1]` do relatório terminal |
| **Arquivo alvo** | `parte1_dart/bin/models/despesa.dart` |

---

## Fonte (prevalece em divergência)

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §4 — Modelagem · Item individual
- Anexo do enunciado — **Parte 1 · Exercício 1** (linhas ~428–435): **≥4 atributos de tipos diferentes**

---

## Regra de negócio

### RN-DOM-01 — Despesa é o item indivisível da conta

Uma `Despesa` representa **um gasto individual** lançado por alguém do grupo. Sem ela não existe lista nem total.

### RN-DOM-01b — Quatro tipos distintos (obrigatório do enunciado)

O enunciado exige **pelo menos quatro atributos de tipos diferentes** (ex.: `String`, `int`, `double`, `DateTime`).  
Contar tipos únicos — vários campos `String` contam como **um** tipo.

| Campo | Tipo | Obrigatório | Default | Regra |
|---|---|---|---|---|
| `descricao` | `String` | sim | — | texto legível do gasto |
| `valor` | `double` | sim | — | valor monetário |
| `pagador` | `String` | sim | — | quem adiantou o dinheiro |
| `quantidade` | `int` | não | `1` | unidades do item (**4º tipo**) |
| `data` | `DateTime` | não | `DateTime.now()` | momento do lançamento |
| `categoria` | `String` | não | `'Geral'` | nicho livre |

**Tipos cobertos:** `String` · `int` · `double` · `DateTime` ✓

**RF-EX-01:** classe com ≥4 tipos distintos, construtor **somente** nomeado, `required` nos obrigatórios e default nos opcionais.

---

## Como precisa ser feito

1. Criar `bin/models/despesa.dart`.
2. Incluir `quantidade` (`int`, default `1`) — sem isso ficam só 3 tipos (`String`/`double`/`DateTime`).
3. Construtor nomeado com `required` em `descricao`, `valor`, `pagador`.
4. `String ficha()` (base para DOM-02).
5. Bloco `[1]` imprime instância legível (inclui quantidade).
6. `dart analyze` limpo.

```dart
class Despesa {
  final String descricao;
  final double valor;
  final String pagador;
  final int quantidade;
  final DateTime data;
  final String categoria;

  Despesa({
    required this.descricao,
    required this.valor,
    required this.pagador,
    this.quantidade = 1,
    DateTime? data,
    this.categoria = 'Geral',
  }) : data = data ?? DateTime.now();

  String ficha() =>
      '$descricao | R\$ ${valor.toStringAsFixed(2)} | pago por $pagador';
}
```

> Formulário Flutter (CREATE-01) continua com **≤3 campos**: `quantidade`, `data` e `categoria` usam default.

---

## Critérios de aceite

- [ ] ≥4 tipos distintos (`String`, `int`, `double`, `DateTime`)
- [ ] Construtor só com parâmetros nomeados + `required` nos obrigatórios
- [ ] `quantidade` default `1`; `categoria` default `'Geral'`
- [ ] Bloco `[1]` imprime dados legíveis (inclui quantidade)
- [ ] `dart analyze` limpo

## BDD

CT-P1-01, CT-P1-02 · `bdd/parte1-dominio.feature`

## Rastreio (preencher ao Done)

| # | Exercício | Arquivo:linha | O que aparece |
|---|---|---|---|
| 1 | Entidade principal | `parte1_dart/bin/models/despesa.dart:__` | Bloco [1] |
