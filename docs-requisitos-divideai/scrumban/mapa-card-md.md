# Mapa Card Jira → MD de requisitos

Padrão Flugo: **todo card** referencia um MD em `docs-requisitos-divideai/` com RN + como fazer (fonte = `contexto-projeto-divide.md`).

| Card | Issue | MD de requisitos (obrigatório) |
|---|---|---|
| DOM-01 | DIV-4 | [`01-parte1-dart/exercicios/01-entidade-principal.md`](../01-parte1-dart/exercicios/01-entidade-principal.md) |
| DOM-02 | DIV-5 | [`.../02-heranca.md`](../01-parte1-dart/exercicios/02-heranca.md) |
| DOM-03 | DIV-7 | [`.../03-composicao.md`](../01-parte1-dart/exercicios/03-composicao.md) |
| DOM-04 | DIV-6 | [`.../04-encapsulamento.md`](../01-parte1-dart/exercicios/04-encapsulamento.md) |
| DOM-05 | DIV-8 | [`.../05-relatorio-cli.md`](../01-parte1-dart/exercicios/05-relatorio-cli.md) |
| DOM-06 | DIV-9 | [`.../06-testes-unitarios.md`](../01-parte1-dart/exercicios/06-testes-unitarios.md) |
| SETUP-01 | DIV-10 | [`02-parte2-flutter/exercicios/00-setup-models.md`](../02-parte2-flutter/exercicios/00-setup-models.md) |
| LIST-01 | DIV-11 | [`.../05-estrutura-tela.md`](../02-parte2-flutter/exercicios/05-estrutura-tela.md) |
| LIST-02 | DIV-12 | [`.../06-cartao.md`](../02-parte2-flutter/exercicios/06-cartao.md) |
| LIST-03 | DIV-13 | [`.../07-lista.md`](../02-parte2-flutter/exercicios/07-lista.md) |
| DETAIL-01 | DIV-14 | [`.../08-navegacao.md`](../02-parte2-flutter/exercicios/08-navegacao.md) |
| CREATE-01 | DIV-15 | [`.../09-formulario.md`](../02-parte2-flutter/exercicios/09-formulario.md) |
| STATE-01 | DIV-16 | [`.../10-estado.md`](../02-parte2-flutter/exercicios/10-estado.md) |
| DOC-01 | DIV-17 | [`99-validacao/doc-readme-rastreio.md`](../99-validacao/doc-readme-rastreio.md) |
| QA-01 | DIV-18 | [`99-validacao/qa-gate-analyze.md`](../99-validacao/qa-gate-analyze.md) |
| SPLASH-01 | DIV-19 | [`.../11-splash-extra.md`](../02-parte2-flutter/exercicios/11-splash-extra.md) |

## Template de Referências no Jira

```markdown
## Referências

**Requisitos (seguir este MD):**
`docs-requisitos-divideai/<caminho-do-md>`

**Fonte:** `contexto-projeto-divide.md` — <seção / exercício>
**RF / RN:** RF-EX-NN · RN-...
**BDD:** CT-P...
**Técnico (opcional):** `docs-tecnicas/` → links em docs-tecnicas/README.md
```
