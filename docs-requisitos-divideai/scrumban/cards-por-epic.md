# Cards por Epic — índice DivideAí

14 cards em 3 Epics. Cada feature traz recurso, conceito, evidência, aceite e `arquivo:linha`.

## Epics

| Epic | Cards |
|---|---|
| **Parte 1 — Domínio Dart** | DIV-C-01..04, DIV-C-04b, DIV-C-04c |
| **Parte 2 — Interface Flutter** | DIV-C-05..10 |
| **Entrega** | DIV-ENT-01, DIV-ENT-02 |

## Resumo

| Card | Epic | Feature | Tipo | Tamanho | BDD |
|---|---|---|---|---|---|
| DIV-C-01 | P1 | 1 Entidade | Feature | P | CT-P1-01,02 |
| DIV-C-02 | P1 | 2 Herança | Feature | P | CT-P1-03,04 |
| DIV-C-03 | P1 | 3 Composição | Feature | P | CT-P1-05,06 |
| DIV-C-04 | P1 | 4 Encapsulamento | Feature | M | CT-P1-07,08 |
| DIV-C-04b | P1 | Relatório CLI | Feature | M | CT-P1-09,10 |
| DIV-C-04c | P1 | `dart test` | QA | M | T-P1-* |
| DIV-C-05 | P2 | 5 Estrutura tela | Feature | M | CT-P2-01,02 |
| DIV-C-06 | P2 | 6 Cartão | Feature | P | CT-P2-03 |
| DIV-C-07 | P2 | 7 Lista | Feature | M | CT-P2-04,05 |
| DIV-C-08 | P2 | 8 Navegação | Feature | M | CT-P2-06,07 |
| DIV-C-09 | P2 | 9 Formulário | Feature | M | CT-P2-08,09 |
| DIV-C-10 | P2 | 10 Estado | Feature | M | CT-P2-10,11 |
| DIV-ENT-01 | Entrega | README + rastreio | Doc | P | — |
| DIV-ENT-02 | Entrega | analyze + checklist | QA | P | — |

## Template de card

```markdown
### [DIV-C-NN] Título

**Epic:** Parte X
**RF:** RF-EX-NN
**Recurso:** ...
**Conceito:** ...
**Evidência:** ...

#### Aceite
- [ ] ...
- [ ] analyze sem errors

#### Rastreio
`arquivo:linha` → o que aparece

#### BDD
CT-PX-NN

#### Dependências
DIV-C-...
```

## Feature → card → arquivo

| # | Card | Arquivo |
|---|---|---|
| 1 | DIV-C-01 | `parte1-dart/bin/models/despesa.dart` |
| 2 | DIV-C-02 | `parte1-dart/bin/models/despesa_parcelada.dart` |
| 3 | DIV-C-03 | `parte1-dart/bin/models/conta_compartilhada.dart` |
| 4 | DIV-C-04 | getters em `conta_compartilhada.dart` |
| 5 | DIV-C-05 | `parte2-flutter/lib/screens/home_page.dart` |
| 6 | DIV-C-06 | `parte2-flutter/lib/widgets/cartao_despesa.dart` |
| 7 | DIV-C-07 | `ListView` em `home_page.dart` |
| 8 | DIV-C-08 | `home_page.dart` + `detalhe_page.dart` |
| 9 | DIV-C-09 | `cadastro_page.dart` |
| 10 | DIV-C-10 | `setState` em `home_page.dart` |
