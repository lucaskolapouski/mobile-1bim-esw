# Documentação de Requisitos — DivideAí (Rachar a Conta)

Requisitos do produto **DivideAí**: domínio Dart, app Flutter (3 telas) e backlog no Jira.

**Fonte de verdade:** [`contexto-projeto-divide.md`](../contexto-projeto-divide.md)  
**Padrão:** Flugo `1sdd` — cards apontam para MDs com **RN + como fazer**; técnico em [`docs-tecnicas/`](../docs-tecnicas/).

---

## Índice

### Visão geral
- [Resumo executivo](00-visao-geral/00-resumo-executivo.md)
- [Escopo do produto](00-visao-geral/01-escopo-do-produto.md)
- [Glossário](00-visao-geral/02-glossario.md)
- [Fontes de verdade](00-visao-geral/03-fontes-de-verdade.md)
- [Critérios de aceite](00-visao-geral/04-criterios-aceite.md)

### Domínio (Parte 1) — MDs referenciados pelos cards DOM-*

- [01 Entidade / DOM-01](01-parte1-dart/exercicios/01-entidade-principal.md) → DIV-4
- [02 Herança / DOM-02](01-parte1-dart/exercicios/02-heranca.md) → DIV-5
- [03 Composição / DOM-03](01-parte1-dart/exercicios/03-composicao.md) → DIV-7
- [04 Encapsulamento / DOM-04](01-parte1-dart/exercicios/04-encapsulamento.md) → DIV-6
- [05 Relatório CLI / DOM-05](01-parte1-dart/exercicios/05-relatorio-cli.md) → DIV-8
- [06 Testes / DOM-06](01-parte1-dart/exercicios/06-testes-unitarios.md) → DIV-9

### UI (Parte 2) — MDs referenciados pelos cards LIST/DETAIL/CREATE/STATE

- [00 Setup models / SETUP-01](02-parte2-flutter/exercicios/00-setup-models.md) → DIV-10
- [05 Estrutura / LIST-01](02-parte2-flutter/exercicios/05-estrutura-tela.md) → DIV-11
- [06 Cartão / LIST-02](02-parte2-flutter/exercicios/06-cartao.md) → DIV-12
- [07 Lista / LIST-03](02-parte2-flutter/exercicios/07-lista.md) → DIV-13
- [08 Navegação / DETAIL-01](02-parte2-flutter/exercicios/08-navegacao.md) → DIV-14
- [09 Formulário / CREATE-01](02-parte2-flutter/exercicios/09-formulario.md) → DIV-15
- [10 Estado / STATE-01](02-parte2-flutter/exercicios/10-estado.md) → DIV-16
- [11 Splash EXTRA / SPLASH-01](02-parte2-flutter/exercicios/11-splash-extra.md) → DIV-19

### Entrega
- [DOC-01 README/rastreio](99-validacao/doc-readme-rastreio.md) → DIV-17
- [QA-01 Gate analyze](99-validacao/qa-gate-analyze.md) → DIV-18
- [Checklist](99-validacao/checklist-entrega.md) · [Tabela modelo](99-validacao/tabela-rastreio-modelo.md)
- [Compatibilidade enunciado Ex.1–10](99-validacao/compatibilidade-enunciado-427-572.md)

### Specs técnicas → [`docs-tecnicas/`](../docs-tecnicas/)
- Dart: [arquitetura](dart/arquitetura.md) · [classes](dart/especificacao-classes.md) · [testes](dart/plano-testes.md)
- Flutter: [arquitetura](flutter/arquitetura-geral.md) · [telas](flutter/especificacao-telas.md) · [rotas](flutter/mapa-de-rotas.md) · [componentes](flutter/componentes-reutilizaveis.md) · [models](flutter/models-e-entidades.md)

### Scrumban / Jira
- **[Mapa Card → MD](scrumban/mapa-card-md.md)** ← use isto ao preencher Referências no Jira
- [Cards por Epic](scrumban/cards-por-epic.md)
- [Backlogs](scrumban/backlog-parte1.md)

### BDD
- [`bdd/parte1-dominio.feature`](bdd/parte1-dominio.feature)
- [`bdd/parte2-interface.feature`](bdd/parte2-interface.feature)

---

Em divergência, prevalece o anexo em `contexto-projeto-divide.md`.
