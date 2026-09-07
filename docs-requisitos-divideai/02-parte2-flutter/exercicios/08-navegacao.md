# DETAIL-01 — Navegação para detalhe

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-14](https://jaoromanodev.atlassian.net/browse/DIV-14) · `DETAIL-01` |
| **RF** | RF-EX-08 |
| **RN** | RN-UI-05 |
| **Recurso obrigatório** | `Navigator.of(context).push` + `MaterialPageRoute` |
| **Conceito obrigatório** | passagem do objeto pelo **construtor** da tela destino |
| **Evidência** | Toque abre detalhe com ≥2 dados ausentes do cartão |
| **Arquivo alvo** | `parte2_flutter/lib/screens/detalhe_page.dart` |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §5 — `detalhe_page.dart` · Anexo **Exercício 8**

---

## Regra de negócio

### RN-UI-05 — Detalhe é do item tocado

O objeto `Despesa` tocado é passado ao construtor. Validar tocando item do **meio** da lista (prova que não está fixo no código).

Campos mínimos além do cartão: `data`, `categoria` (e opcionalmente `quantidade`).

**RF-EX-08:** push + `MaterialPageRoute` + construtor com `Despesa`.

---

## Como precisa ser feito

```dart
Navigator.of(context).push(
  MaterialPageRoute(
    builder: (_) => DetalhePage(despesa: despesa),
  ),
);
```

`DetalhePage({ required this.despesa })` exibe descrição/valor/pagador + data/categoria (+ `ficha()` se parcelada).

---

## Critérios de aceite

- [ ] Push + `MaterialPageRoute`
- [ ] Objeto no construtor
- [ ] ≥2 campos extras vs cartão
- [ ] Item do meio corresponde ao detalhe

## BDD

CT-P2-06, CT-P2-07

## Rastreio

| # | 8 | `home_page.dart:__` (push) | Toque abre detalhe |
