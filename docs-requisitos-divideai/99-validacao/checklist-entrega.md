# Checklist de conclusão — DivideAí

> Marcado em **QA-01 / DIV-18** (branch `feature/DOC-01-QA-01-readme-gate`).

## Qualidade

- [x] `dart analyze` (Parte 1) — zero errors
- [x] `flutter analyze` (Parte 2) — zero errors
- [x] `dart test` — passa (19 testes)

## Domínio (CLI)

- [x] `dart run` (em `parte1_dart/`) — 4 blocos em ordem
- [x] Bloco [1]: entidade principal
- [x] Bloco [2]: `ficha()` comum vs parcelada
- [x] Bloco [3]: conta com itens
- [x] Bloco [4]: totais antes/depois de `adicionar()`

## App

- [x] 3 telas: lista, detalhe, cadastro
- [x] Abre com 6 despesas
- [x] Total (e opcionalmente por pessoa) no topo
- [x] Cartões com `BoxDecoration`
- [x] `ListView.builder`
- [x] Detalhe com ≥2 campos extras vs cartão
- [x] Cadastro ≤3 campos + controllers
- [x] Após confirmar: 7º item + total atualizado sem reiniciar
- [x] Dados de domínio só via models

## Documentação do repo

- [x] Tema e modelagem no README
- [x] Tabela de rastreio preenchida (10 linhas)
- [x] Splash (se existir) sem rota própria / sem 4ª tela

## Opcional

- [x] Logo / ícone
- [ ] Editar / excluir
- [x] `flutter test` (smoke da home)
