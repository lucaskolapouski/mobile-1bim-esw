# Fontes de verdade

| # | Fonte | Local | Uso |
|---|---|---|---|
| 1 | Requisitos do produto (domínio, telas, constraints) | `contexto-projeto-divide.md` | **Prevalece** em divergência |
| 2 | MD de requisitos por card (RN + como fazer) | `docs-requisitos-divideai/**/exercicios/*.md` + `99-validacao/*` | O que o card Jira **deve** apontar |
| 3 | Specs técnicas | `docs-tecnicas/` → dart/flutter | Assinaturas, telas, testes |
| 4 | Código | `parte1_dart/`, `parte2_flutter/` | Parte 2 prevalece nas classes se divergir |

## Padrão Flugo (1sdd)

| Flugo | DivideAí |
|---|---|
| `docs-requisitos-mobile/<módulo>/` (RN/RF) | `docs-requisitos-divideai/.../exercicios/*.md` |
| `docs-tecnicas/<módulo>/` | `docs-tecnicas/` (índice) + `dart/` + `flutter/` |
| Card cita RF/RN + path do MD | Card cita path do MD + RF/RN + âncora no contexto |

## Status nos documentos

- **No escopo** — exigência do MVP
- **Decisão de produto** — já fechada no contexto (ex.: só Create)
- **Inferido — validar** — detalhe técnico aberto
- **Extra** — não bloqueia Done (splash)
- **Divergente** — ver `99-validacao/lacunas.md`

## Rastreabilidade

| Camada | ID | Exemplo |
|---|---|---|
| Feature / etapa | DOM-01, LIST-01… | LIST-03 |
| RF | `RF-EX-NN` | `RF-EX-07` |
| RN | `RN-DOM-NN` / `RN-UI-NN` | `RN-UI-04` |
| BDD | `CT-P1-NN` / `CT-P2-NN` | `CT-P2-04` |
| Card Jira | `DIV-N` | `DIV-13` |

Fluxo: **contexto → MD requisitos → Card Jira → arquivo:linha**

Mapa completo: [`scrumban/mapa-card-md.md`](../scrumban/mapa-card-md.md)
