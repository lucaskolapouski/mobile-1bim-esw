# Briefing — Cards no Jira (padrão Flugo)

## Regra de ouro

Cada Feature/Task **deve** ter na seção **Referências**:

1. Path do **MD de requisitos** em `docs-requisitos-divideai/` (RN + como fazer)
2. Âncora em `contexto-projeto-divide.md`
3. IDs RF / RN / BDD
4. (Opcional) link técnico via `docs-tecnicas/`

Mapa: [`../scrumban/mapa-card-md.md`](../scrumban/mapa-card-md.md)

## Template de descrição

```markdown
## Contexto
...

## Objetivo do usuário
...

## Escopo incluído
...

## Critérios de aceite (Given/When/Then)
...

## Estados
...

## Referências

**Requisitos (seguir este MD):**
`docs-requisitos-divideai/<path>.md`

**Fonte:** `contexto-projeto-divide.md` — <§ / Exercício N>
**RF / RN:** RF-EX-NN · RN-...
**BDD:** CT-P...
**Técnico:** ver `docs-tecnicas/README.md`

## Dependências
**Sugerido após:** DIV-...
```

## Epics

| Epic | Cards |
|---|---|
| DIV-1 Parte 1 Domínio | DOM-01..06 |
| DIV-3 Parte 2 Flutter | SETUP, LIST, DETAIL, CREATE, STATE, SPLASH |
| DIV-2 Entrega | DOC-01, QA-01 |

## DoD do card

1. Aceite do MD marcado  
2. Analyze/teste ok  
3. `arquivo:linha` no card → README  
4. Commit cita `DIV-N`
