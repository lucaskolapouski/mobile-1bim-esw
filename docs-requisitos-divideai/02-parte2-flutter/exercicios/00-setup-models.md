# SETUP-01 — Copiar models + shell Flutter

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-10](https://jaoromanodev.atlassian.net/browse/DIV-10) · `SETUP-01` |
| **RF** | RF-SETUP-01 |
| **RN** | RN-SETUP-01 · RN-SETUP-02 |
| **Arquivos** | `parte2_flutter/lib/models/*` · `lib/main.dart` |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §2 — Estrutura · Parte 2 inicia copiando classes
- Anexo — **Parte 2** (primeiro parágrafo: copiar models; nenhum dado de domínio no widget)
- Spec: [`flutter/models-e-entidades.md`](../../flutter/models-e-entidades.md)

---

## Regra de negócio

### RN-SETUP-01 — Mesmas classes, cópia manual

Models em `lib/models/` são cópia da Parte 1. Sem pacote compartilhado. Se divergirem, **vale a Parte 2**.

### RN-SETUP-02 — Dados só via models

Nenhum literal de domínio (`"Pizza"`, `45.0`) dentro de widget — só rótulos de UI. Itens de exemplo vêm de factory/`ContaCompartilhada` com 6 despesas.

**RF-SETUP-01:** app sobe sem counter demo; factory cria conta com **exatamente 6** despesas.

---

## Como precisa ser feito

1. Copiar `despesa.dart`, `despesa_parcelada.dart`, `conta_compartilhada.dart` → `lib/models/`.
2. Criar `ContaCompartilhadaExemplo.criar()` com 6 itens coerentes.
3. `MaterialApp(home: HomePage(...))` (ou placeholder até LIST-01).
4. Remover template do counter.

---

## Critérios de aceite

- [ ] Models compilam em `lib/models/`
- [ ] Factory com 6 despesas
- [ ] App sobe sem crash / sem counter
