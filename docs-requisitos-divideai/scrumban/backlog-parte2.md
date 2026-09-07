# Backlog — Epic Parte 2 (Interface Flutter)

**Pré-requisito:** Epic Parte 1 concluído (ou models estáveis copiados).

## Onda 0 — Setup (meio dia)

| Tarefa | Descrição |
|---|---|
| Copiar models | `lib/models/` ← cópia de `parte1-dart/bin/models/` |
| Limpar template | Remover counter demo do `main.dart` |
| Factory exemplo | `ContaCompartilhadaExemplo.criar()` com 6 itens |

## Onda 1 — Layout lista


| Card | Título | Tamanho | Dependências | BDD |
|---|---|---|---|---|
| DIV-C-05 | `HomePage`: Scaffold, AppBar, Column, totais, Expanded | M | models copiados | CT-P2-01,02 |
| DIV-C-06 | Widget `CartaoDespesa` com BoxDecoration | P | DIV-C-05 | CT-P2-03 |
| DIV-C-07 | `ListView.builder` com 6 itens do agrupador | M | DIV-C-05,06 | CT-P2-04,05 |

### DIV-C-05
- `mainAxisAlignment` e `crossAxisAlignment` explícitos
- Exibe `totalGeral` (e opcional `valorPorPessoa`)
- **Rastreio:** linha 5 da tabela (AppBar + corpo)

### DIV-C-06
- Arquivo `widgets/cartao_despesa.dart`
- Sem `color`+`decoration` juntos
- **Rastreio:** linha 6 (cada cartão)

### DIV-C-07
- 6 itens ao abrir; sem lista vazia
- `itemCount`/`itemBuilder` do agrupador
- **Rastreio:** linha 7

## Onda 2 — Navegação e cadastro

| Card | Título | Tamanho | Dependências | BDD |
|---|---|---|---|---|
| DIV-C-08 | `DetalhePage` + Navigator.push com objeto | M | DIV-C-07 | CT-P2-06,07 |
| DIV-C-09 | `CadastroPage` com ≤3 campos e controllers | M | DIV-C-05 | CT-P2-08,09 |

### DIV-C-08
- Toque no item abre o detalhe correto (validar com item do meio da lista)
- ≥2 campos extras vs cartão
- **Rastreio:** linha 8

### DIV-C-09
- `TextFormField` + `TextEditingController`
- `double.tryParse`; `InputDecoration`
- `Navigator.pop(context, despesa)`
- **Rastreio:** linha 9

## Onda 3 — Estado

| Card | Título | Tamanho | Dependências | BDD |
|---|---|---|---|---|
| DIV-C-10 | `StatefulWidget` + `setState` + FAB → cadastro → 7º item | M | DIV-C-07,09 | CT-P2-10,11 |

### DIV-C-10
- `conta.adicionar()` dentro de `setState`
- Lista 6→7; total recalcula
- Confirmar que sem `setState` a UI não reage
- **Rastreio:** linha 10

## Extras opcionais (não bloqueiam Done)

| Item | Card sugerido | Prioridade |
|---|---|---|
| Logo / ícone | DIV-EXTRA-01 | P3 |
| Splash automático | DIV-EXTRA-02 | P3 |
| Editar/excluir despesa | DIV-EXTRA-03 | P3 |

## Definição de pronto — Epic Parte 2

1. Smoke lista → detalhe → cadastro → 7 itens + total ok.
2. `flutter analyze` 0 errors.
3. Tabela de rastreio linhas 5–10 preenchidas.
4. Nenhum dado de domínio hardcoded em widgets.
