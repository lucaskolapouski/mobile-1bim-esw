# LIST-01 — Estrutura de tela (AppBar + totais)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-11](https://jaoromanodev.atlassian.net/browse/DIV-11) · `LIST-01` |
| **RF** | RF-EX-05 |
| **RN** | RN-UI-01 · RN-UI-02 |
| **Recurso obrigatório** | `Scaffold` com `AppBar` |
| **Conceito obrigatório** | `Column` com `mainAxisAlignment` e `crossAxisAlignment` **explícitos** |
| **Evidência** | Tela inicial: AppBar + total no topo |
| **Arquivo alvo** | `parte2_flutter/lib/screens/home_page.dart` |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §5 — `home_page.dart` · Anexo **Exercício 5**
- Totais: §4 getters + Ex. 4 (mesmo valor no topo)

---

## Regra de negócio

### RN-UI-01 — Home é a primeira tela real

App cai na listagem (após splash opcional). AppBar identifica o produto (DivideAí / logo).

### RN-UI-02 — Totais no topo vêm dos getters

Exibir `conta.totalGeral` e `conta.valorPorPessoa` — **nunca** string fixa. Área da lista abaixo em `Expanded` (LIST-03).

**RF-EX-05:** `Scaffold` + `AppBar` + `Column` com alinhamentos explícitos + total do Ex. 4 no topo.

---

## Como precisa ser feito

```text
Scaffold
├── AppBar (título DivideAí)
└── body: Column(
      mainAxisAlignment: ...,   // explícito
      crossAxisAlignment: ...,  // explícito
      children: [
        // Topo: Total geral + Valor por pessoa
        Expanded(child: /* ListView — LIST-03 */),
      ],
    )
```

**Armadilha:** `ListView` dentro de `Column` sem `Expanded` → erro de altura ilimitada.

---

## Critérios de aceite

- [ ] AppBar própria
- [ ] Alinhamentos explícitos
- [ ] Totais dos getters
- [ ] `Expanded` reservado para a lista

## BDD

CT-P2-01, CT-P2-02

## Rastreio

| # | 5 | `home_page.dart:__` | AppBar e corpo (total no topo) |
