# QA-01 — Gate analyze + checklist

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-18](https://jaoromanodev.atlassian.net/browse/DIV-18) · `QA-01` |
| **RF** | RF-QA-01 |
| **RN** | RN-QA-02 · RN-QA-03 |
| **Checklist** | [`checklist-entrega.md`](checklist-entrega.md) |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §2 regras técnicas · §7 checklist · Anexo checklist

---

## Regra de negócio

### RN-QA-02 — Zero *errors* de analyze

`dart analyze` (Parte 1) e `flutter analyze` (Parte 2) **sem nenhum error**. Warning/info tolerados. Entrega com error não é corrigida.

### RN-QA-03 — Histórico de commits observável

Commits distribuídos ao longo do desenvolvimento (não tudo na véspera). Histórico faz parte da observação.

**RF-QA-01:** checklist §7 marcado; smoke CLI 4 blocos + app 6→7; `dart test` verde.

---

## Como precisa ser feito

1. Rodar analyzes / tests.
2. Percorrer [`checklist-entrega.md`](checklist-entrega.md).
3. Smoke: `dart run` + fluxo lista → detalhe → cadastro → totais.

---

## Critérios de aceite

- [ ] Analyze 0 errors (Dart + Flutter)
- [ ] `dart test` ok
- [ ] Checklist marcado
- [ ] Commits distribuídos (evidência no git log)
