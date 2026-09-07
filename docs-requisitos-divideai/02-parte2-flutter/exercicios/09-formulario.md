# CREATE-01 — Formulário de cadastro (≤3 campos)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-15](https://jaoromanodev.atlassian.net/browse/DIV-15) · `CREATE-01` |
| **RF** | RF-EX-09 |
| **RN** | RN-UI-06 |
| **Recurso obrigatório** | `TextFormField` |
| **Conceito obrigatório** | `TextEditingController` |
| **Evidência** | Tela de cadastro com ≤3 campos + Confirmar |
| **Arquivo alvo** | `parte2_flutter/lib/screens/cadastro_page.dart` |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §5 — `cadastro_page.dart` · Anexo **Exercício 9**
- Escopo: **Create only** (não CRUD completo) — §5 checagem FAB

---

## Regra de negócio

### RN-UI-06 — Cadastro rápido (máx. 3 campos)

| Campo | Controller | Conversão |
|---|---|---|
| Descrição | `TextEditingController` | `String` |
| Valor | `TextEditingController` | `double.tryParse` (tratar falha) |
| Pagador | `TextEditingController` | `String` |

Defaults automáticos: `quantidade = 1`, `data = DateTime.now()`, `categoria = 'Geral'` (mantém ≤3 campos no form; o `int` da entidade fica no default).

**RF-EX-09:** cada campo com **`TextEditingController`**; `InputDecoration` (rótulo, ícone, borda arredondada); Confirmar faz `Navigator.pop(context, despesa)`.

**Obrigatório:** `dispose()` dos controllers.

---

## Como precisa ser feito

```dart
void _confirmar() {
  final valor = double.tryParse(_valorController.text.replaceAll(',', '.'));
  if (valor == null) { /* feedback */ return; }
  final despesa = Despesa(
    descricao: _descricaoController.text,
    valor: valor,
    pagador: _pagadorController.text,
  );
  Navigator.pop(context, despesa);
}
```

Integração FAB → STATE-01.

---

## Critérios de aceite

- [ ] ≤3 `TextFormField`
- [ ] Um `TextEditingController` por campo + `dispose`
- [ ] `InputDecoration` completa
- [ ] `double.tryParse` com falha tratada
- [ ] `pop` retorna `Despesa`

## BDD

CT-P2-08, CT-P2-09

## Rastreio

| # | 9 | `cadastro_page.dart:__` | Tela de cadastro |
