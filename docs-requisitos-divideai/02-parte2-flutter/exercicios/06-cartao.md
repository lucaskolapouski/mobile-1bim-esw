# LIST-02 — Cartão do item (`CartaoDespesa`)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-12](https://jaoromanodev.atlassian.net/browse/DIV-12) · `LIST-02` |
| **RF** | RF-EX-06 |
| **RN** | RN-UI-03 |
| **Recurso obrigatório** | `Container` |
| **Conceito obrigatório** | `BoxDecoration` (fundo, borda arredondada, sombra) |
| **Evidência** | Cada item da lista como cartão |
| **Arquivo alvo** | `parte2_flutter/lib/widgets/cartao_despesa.dart` |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §5 — Componentes · Anexo **Exercício 6**

---

## Regra de negócio

### RN-UI-03 — Cartão mostra resumo; detalhe mostra o resto

No cartão: `descricao`, `valor`, `pagador`.  
**Reservar** para DETAIL-01: `data`, `categoria` (≥2 campos que não estão no cartão).

Dados **sempre** do objeto `Despesa` — sem literais.

**RF-EX-06:** widget em arquivo próprio; `BoxDecoration` com fundo, radius, sombra. **Proibido:** `color` + `decoration` no mesmo `Container` (cor vai **dentro** do `BoxDecoration`).

---

## Como precisa ser feito

1. `CartaoDespesa({ required Despesa despesa, VoidCallback? onTap })`.
2. `Container` + `BoxDecoration(color:, borderRadius:, boxShadow:)`.
3. Reutilizado por LIST-03 (`ListView.builder`).

---

## Critérios de aceite

- [ ] Arquivo próprio em `widgets/`
- [ ] `BoxDecoration` completo
- [ ] Sem `color`+`decoration` juntos
- [ ] Dados do objeto

## BDD

CT-P2-03

## Rastreio

| # | 6 | `cartao_despesa.dart:__` | Cada item da lista |
