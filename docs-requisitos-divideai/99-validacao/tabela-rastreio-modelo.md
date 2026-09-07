# Modelo — Tabela de rastreio (README raiz)

Copiar para o `README.md` na raiz e preencher **Arquivo e linha** ao concluir cada card no Jira.

> Liga feature → evidência no código; base dos cards e do DoD.

## Tabela

| # | Exercício | Arquivo e linha | O que aparece na tela |
|---|---|---|---|
| 1 | Entidade principal | `parte1-dart/bin/models/despesa.dart:__` | Bloco [1] do relatório |
| 2 | Herança | `parte1-dart/bin/models/despesa_parcelada.dart:__` | Bloco [2] do relatório |
| 3 | Composição | `parte1-dart/bin/models/conta_compartilhada.dart:__` | Bloco [3] do relatório |
| 4 | Encapsulamento | `parte1-dart/bin/models/conta_compartilhada.dart:__` | Bloco [4] e o total no topo da tela de lista |
| 5 | Estrutura de tela | `parte2-flutter/lib/screens/home_page.dart:__` | AppBar e corpo da tela inicial |
| 6 | Cartão | `parte2-flutter/lib/widgets/cartao_despesa.dart:__` | Cada item da lista |
| 7 | Lista | `parte2-flutter/lib/screens/home_page.dart:__` | Lista rolável com seis itens |
| 8 | Navegação | `parte2-flutter/lib/screens/home_page.dart:__` | Toque no item abre o detalhe |
| 9 | Formulário | `parte2-flutter/lib/screens/cadastro_page.dart:__` | Tela de cadastro |
| 10 | Estado | `parte2-flutter/lib/screens/home_page.dart:__` | Item novo na lista e total atualizado |

## Como preencher `arquivo:linha`

1. Abra o arquivo no editor.
2. Aponte para a linha onde o **recurso obrigatório** está declarado ou usado de forma inequívoca:
   - Ex. 1: linha da `class Despesa` ou do construtor nomeado
   - Ex. 4: linha do `get totalGeral`
   - Ex. 10: linha do `setState(() { ... adicionar ... })`
3. Use caminho relativo à raiz do repositório.
4. Se usar `parte1_dart` (underscore), substitua na tabela e seja consistente.

## Mapeamento card Jira → linha da tabela

| Card Jira | Linha # |
|---|---|
| DIV-C-01 | 1 |
| DIV-C-02 | 2 |
| DIV-C-03 | 3 |
| DIV-C-04 | 4 |
| DIV-C-05 | 5 |
| DIV-C-06 | 6 |
| DIV-C-07 | 7 |
| DIV-C-08 | 8 |
| DIV-C-09 | 9 |
| DIV-C-10 | 10 |

## Declaração do tema (copiar para README)

```markdown
## Tema — DivideAí

DivideAí modela despesas individuais (`Despesa`) agrupadas em uma conta compartilhada
(`ContaCompartilhada`), com suporte a despesas parceladas (`DespesaParcelada`) via herança.

**Composição vs herança:** Uma conta *tem* despesas (composição). Uma despesa parcelada *é uma*
despesa (herança), pois compartilha os mesmos atributos base com informação extra de parcelas.
```
