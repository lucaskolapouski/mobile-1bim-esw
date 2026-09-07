# SPLASH-01 — Splash automático (EXTRA)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-19](https://jaoromanodev.atlassian.net/browse/DIV-19) · `SPLASH-01` |
| **RF** | RF-EXTRA-01 |
| **RN** | RN-EXTRA-01 |
| **Prioridade** | P3 — **não bloqueia MVP** |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §5 — Checagem splash / logo
- [`00-visao-geral/01-escopo-do-produto.md`](../../00-visao-geral/01-escopo-do-produto.md) — extras

---

## Regra de negócio

### RN-EXTRA-01 — Splash não é 4ª tela

O produto tem **exatamente 3 telas**: lista, detalhe, cadastro.  
Splash, se existir: transição **automática** 1–2s (logo), **sem botão**, **sem rota navegável** (não dá para “voltar” para o splash). Alternativa segura: splash nativo do SO.

**Proibido:** contar splash como tela do trabalho; consumir tempo da demo de 5 min.

---

## Como precisa ser feito

1. Branding breve → navega/substitui para `HomePage` (LISTA).
2. Em ≤2s o usuário já vê 6 itens.
3. Ou pular splash custom e usar o nativo.

---

## Critérios de aceite

- [ ] ≤2s até a lista
- [ ] Sem rota própria contada como tela
- [ ] Sem botão Continuar
