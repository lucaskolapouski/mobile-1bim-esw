# Backlog — Epic Entrega

Cards transversais que fecham o MVP (doc + qualidade).

| Card | Título | Tipo | Tamanho | Dependências |
|---|---|---|---|---|
| DIV-ENT-01 | README: tema, modelagem, tabela de rastreio | Doc | P | features 1–10 |
| DIV-ENT-02 | Gate: `dart analyze` + `flutter analyze` + checklist | QA | P | DIV-C-04c, DIV-C-10 |

---

### DIV-ENT-01 — README e rastreio

- [ ] Frase do tema (entidades + relação)
- [ ] 1–2 frases: composição vs herança
- [ ] Tabela de rastreio com **10 linhas** e `arquivo:linha` reais
- [ ] Citações de código de terceiros (se houver)

---

### DIV-ENT-02 — Qualidade

- [ ] `dart analyze` → 0 errors
- [ ] `flutter analyze` → 0 errors
- [ ] `dart test` verde
- [ ] Checklist em `99-validacao/checklist-entrega.md`

---

## Ordem sugerida de implementação

| Fase | Foco | Cards |
|---|---|---|
| 1 | Domínio Dart | DIV-C-01..04c |
| 2 | Lista Flutter | DIV-C-05..07 |
| 3 | Detalhe + cadastro + estado | DIV-C-08..10 |
| 4 | Doc + qualidade | DIV-ENT-01..02 |
