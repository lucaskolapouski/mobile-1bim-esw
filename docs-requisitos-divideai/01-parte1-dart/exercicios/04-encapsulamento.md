# DOM-04 — Encapsulamento (getters calculados)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-6](https://jaoromanodev.atlassian.net/browse/DIV-6) · `DOM-04` |
| **RF** | RF-EX-04 |
| **RN** | RN-DOM-04 · RN-DOM-05 |
| **Recurso obrigatório** | atributo privado com `_` |
| **Conceito obrigatório** | `get` que devolve valor **calculado** |
| **Evidência** | Bloco `[4]` antes/depois + **mesmo valor no topo da lista Flutter** |
| **Arquivo alvo** | `parte1_dart/bin/models/conta_compartilhada.dart` |
| **Depende de** | DOM-03 (DIV-7) |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §4 — Encapsulamento com getter calculado
- Anexo — **Parte 1 · Exercício 4**

---

## Regra de negócio

### RN-DOM-04 — Lista interna privada

`_despesas` nunca é mutada por fora da classe (exceto via `adicionar`). Em Dart, `_` é privacidade **de arquivo**.

### RN-DOM-05 — Totais sempre derivados

| Getter | Fórmula | Proibido |
|---|---|---|
| `totalGeral` | soma de `d.valor` em `_despesas` | campo `_totalGeral` atualizado à mão |
| `valorPorPessoa` | `totalGeral / participantes.length` | cache manual do resultado |

**RF-EX-04:** após `adicionar()`, os getters mudam sozinhos. O mesmo `totalGeral` alimenta o topo da home (LIST-01).

---

## Como precisa ser feito

```dart
double get totalGeral =>
    _despesas.fold(0.0, (soma, d) => soma + d.valor);

double get valorPorPessoa =>
    totalGeral / participantes.length;
```

1. Prefixar lista com `_`.
2. Getters calculam a cada chamada.
3. Bloco `[4]`: imprimir → `adicionar` → imprimir de novo (valores **diferentes**).
4. Na Parte 2, topo da lista lê os getters (não string fixa).

---

## Critérios de aceite

- [ ] `_despesas` privada
- [ ] `totalGeral` / `valorPorPessoa` calculados
- [ ] Bloco `[4]` antes ≠ depois
- [ ] Topo Flutter usa os getters

## BDD

CT-P1-07, CT-P1-08

## Rastreio

| # | 4 | Arquivo:linha | `conta_compartilhada.dart:__` | Bloco [4] + total na lista |
