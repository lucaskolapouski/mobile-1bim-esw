# Checklist de conclusão — DivideAí

## Qualidade

- [ ] `dart analyze` (Parte 1) — zero errors
- [ ] `flutter analyze` (Parte 2) — zero errors
- [ ] `dart test` — passa

## Domínio (CLI)

- [ ] `dart run bin/main.dart` — 4 blocos em ordem
- [ ] Bloco [1]: entidade principal
- [ ] Bloco [2]: `ficha()` comum vs parcelada
- [ ] Bloco [3]: conta com itens
- [ ] Bloco [4]: totais antes/depois de `adicionar()`

## App

- [ ] 3 telas: lista, detalhe, cadastro
- [ ] Abre com 6 despesas
- [ ] Total (e opcionalmente por pessoa) no topo
- [ ] Cartões com `BoxDecoration`
- [ ] `ListView.builder`
- [ ] Detalhe com ≥2 campos extras vs cartão
- [ ] Cadastro ≤3 campos + controllers
- [ ] Após confirmar: 7º item + total atualizado sem reiniciar
- [ ] Dados de domínio só via models

## Documentação do repo

- [ ] Tema e modelagem no README
- [ ] Tabela de rastreio preenchida (10 linhas)
- [ ] Splash (se existir) sem rota própria / sem 4ª tela

## Opcional

- [ ] Logo / ícone
- [ ] Editar / excluir
- [ ] `flutter test`
