# Critérios de aceite — DivideAí

Cada feature **1–10** só entra em Done se cumprir os três pontos:

| Critério | Significado |
|---|---|
| Recurso obrigatório usado de verdade | O recurso faz o papel dele (não só “aparece no arquivo”) |
| Conceito aplicado | OO / Flutter conforme a feature |
| Evidência visível | Resultado no terminal ou na UI, observável ao rodar |

Feature incompleta = card bloqueado no Jira.

## Mapa feature → recurso → conceito → evidência

| # | Nome | Recurso | Conceito | Evidência |
|---|---|---|---|---|
| 1 | Entidade principal | `class` + construtor nomeado | `required` | Bloco [1] do relatório |
| 2 | Herança | `extends` | `super` + `@override` | Bloco [2] — `ficha()` pai vs filha |
| 3 | Composição | `List<T>` | "é um" vs "tem um" | Bloco [3] — contagem e itens |
| 4 | Encapsulamento | `_` privado | `get` calculado | Bloco [4] antes/depois + total no topo da lista |
| 5 | Estrutura de tela | `Scaffold` + `AppBar` | `Column` + alinhamentos | Lista com AppBar e total |
| 6 | Cartão | `Container` | `BoxDecoration` | Item como cartão |
| 7 | Lista | `ListView.builder` | `itemCount` / `itemBuilder` | 6 itens ao abrir |
| 8 | Navegação | `Navigator.push` + `MaterialPageRoute` | objeto no construtor | Detalhe com dados extras |
| 9 | Formulário | `TextFormField` | `TextEditingController` | Cadastro ≤3 campos |
| 10 | Estado | `StatefulWidget` | `setState` | 7º item + total atualizado |

## Checks de domínio / UI (smoke)

- Por que `DespesaParcelada` herda e não compõe?
- Remover `setState` → UI não atualiza
- `ListView.builder` vs `Column`+`map`
- Totais no topo vêm dos getters e mudam após cadastro
- Sem `TextEditingController` o Confirmar não lê o campo

## Fora do MVP (não bloqueiam Done)

| Item | Observação |
|---|---|
| Splash com rota própria | Quebra a regra de 3 telas |
| Logo / ícone | Polimento |
| Editar / excluir | Extra; Create basta |
| Persistência | Sessão única |
| Reset “nova conta” | Extra; não substitui fluxo 6→7 |
