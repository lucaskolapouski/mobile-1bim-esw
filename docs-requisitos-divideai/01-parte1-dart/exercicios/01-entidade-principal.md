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
- Anexo do enunciado — **Parte 1 · Exercício 1** (recurso / conceito / evidência)

---

## Regra de negócio

### RN-DOM-01 — Despesa é o item indivisível da conta

Uma `Despesa` representa **um gasto individual** lançado por alguém do grupo (ex.: Pizza, Uber). Sem ela não existe lista nem total.

| Campo | Tipo | Obrigatório | Default | Regra |
|---|---|---|---|---|
| `descricao` | `String` | sim | — | texto legível do gasto |
| `valor` | `double` | sim | — | valor monetário positivo (domínio) |
| `pagador` | `String` | sim | — | quem adiantou o dinheiro |
| `data` | `DateTime` | não | `DateTime.now()` | momento do lançamento |
| `categoria` | `String` | não | `'Geral'` | nicho livre (restaurante, viagem, casa…) |

**RF-EX-01:** criar a classe com ≥4 tipos distintos, construtor **somente** com parâmetros nomeados, `required` nos obrigatórios e default nos opcionais.

---

## Como precisa ser feito

1. Criar `bin/models/despesa.dart` (ou alinhar pasta do repo e documentar no README).
2. Construtor nomeado: `Despesa({ required this.descricao, required this.valor, required this.pagador, DateTime? data, this.categoria = 'Geral' })`.
3. Implementar `String ficha()` (base para herança no DOM-02) — ex.: `"Pizza | R$ 45.00 | pago por Ana"`.
4. Bloco `[1]` do CLI imprime uma instância legível (descrição, valor, pagador, data, categoria).
5. `dart analyze` sem errors neste arquivo.

```dart
class Despesa {
  final String descricao;
  final double valor;
  final String pagador;
  final DateTime data;
  final String categoria;

  Despesa({
    required this.descricao,
    required this.valor,
    required this.pagador,
    DateTime? data,
    this.categoria = 'Geral',
  }) : data = data ?? DateTime.now();

  String ficha() =>
      '$descricao | R\$ ${valor.toStringAsFixed(2)} | pago por $pagador';
}
```

---

## Critérios de aceite

- [ ] Construtor usa **apenas** parâmetros nomeados
- [ ] Campos obrigatórios com `required`
- [ ] `categoria` = `'Geral'` quando omitida
- [ ] Bloco `[1]` imprime dados legíveis
- [ ] `dart analyze` limpo

## BDD

CT-P1-01, CT-P1-02 · `bdd/parte1-dominio.feature`

## Rastreio (preencher ao Done)

| # | Exercício | Arquivo:linha | O que aparece |
|---|---|---|---|
| 1 | Entidade principal | `parte1_dart/bin/models/despesa.dart:__` | Bloco [1] |
