# LIST-03 — Lista dinâmica (6 despesas)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-13](https://jaoromanodev.atlassian.net/browse/DIV-13) · `LIST-03` |
| **RF** | RF-EX-07 |
| **RN** | RN-UI-04 |
| **Recurso obrigatório** | `ListView.builder` |
| **Conceito obrigatório** | `itemCount` / `itemBuilder` alimentados pelo agrupador |
| **Evidência** | 6 itens ao abrir; lista rolável |
| **Arquivo alvo** | `parte2_flutter/lib/screens/home_page.dart` |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §5 — Lista · Anexo **Exercício 7**

---

## Regra de negócio

### RN-UI-04 — Abre já cheia; dados vêm da conta

Sem tela intermediária navegável, sem botão “carregar”, sem lista vazia no primeiro frame.  
`ContaCompartilhada` inicial com **exatamente 6** despesas. Fonte: `conta.despesas`, não lista solta no widget.

**RF-EX-07:** `ListView.builder` (não `Column`+`map`); cada item = `CartaoDespesa`.

---

## Como precisa ser feito

```dart
Expanded(
  child: ListView.builder(
    itemCount: conta.despesas.length,
    itemBuilder: (context, index) {
      final despesa = conta.despesas[index];
      return CartaoDespesa(despesa: despesa, onTap: () { /* DETAIL-01 */ });
    },
  ),
)
```

---

## Critérios de aceite

- [ ] `ListView.builder`
- [ ] 6 cartões no primeiro segundo
- [ ] Dados do agrupador
- [ ] Lista rolável

## BDD

CT-P2-04, CT-P2-05

## Rastreio

| # | 7 | `home_page.dart:__` | Lista rolável com seis itens |
