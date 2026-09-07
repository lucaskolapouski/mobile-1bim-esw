# DOC-01 — README + tabela de rastreio

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-17](https://jaoromanodev.atlassian.net/browse/DIV-17) · `DOC-01` |
| **RF** | RF-DOC-01 |
| **RN** | RN-DOC-01 |
| **Arquivo** | `README.md` (raiz do repo) |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §2 — README + tabela de rastreio
- Modelo: [`99-validacao/tabela-rastreio-modelo.md`](../tabela-rastreio-modelo.md)

---

## Regra de negócio

### RN-DOC-01 — Sem tabela, não há correção

README raiz **obrigatório** com:

1. Frase do tema (entidades + como se relacionam)
2. Justificativa composição vs herança (1–2 frases) — Ex. 3
3. Tabela de rastreio **10 linhas** com `arquivo:linha` reais

**RF-DOC-01:** preencher incrementalmente a cada feature Done (copiar do card).

---

## Como precisa ser feito

Usar o modelo em `tabela-rastreio-modelo.md`. Atualizar caminhos reais após implementação (`parte1_dart` / `parte2_flutter`).

---

## Critérios de aceite

- [ ] Tema + OO no README
- [ ] Tabela 1–10 com `arquivo:linha`
