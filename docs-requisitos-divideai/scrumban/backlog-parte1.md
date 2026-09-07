# Backlog — Epic Parte 1 (Domínio Dart)

Ordem de implementação recomendada. Cada onda depende da anterior.

## Onda 1 — Classes base

| Card | Título | Tamanho | Dependências | BDD |
|---|---|---|---|---|
| DIV-C-01 | Criar classe `Despesa` com construtor nomeado e `required` | P | — | CT-P1-01,02 |
| DIV-C-02 | Criar `DespesaParcelada extends Despesa` com `@override ficha()` | P | DIV-C-01 | CT-P1-03,04 |
| DIV-C-03 | Criar `ContaCompartilhada` com `List<Despesa>` e `adicionar()` | P | DIV-C-01 | CT-P1-05,06 |

### DIV-C-01 — Critérios de aceite
- Classe em `bin/models/despesa.dart`
- ≥4 tipos de atributos; `required` nos obrigatórios
- `categoria` default `'Geral'`
- Método `ficha()` para uso no Ex. 2
- **Rastreio:** bloco [1]

### DIV-C-02 — Critérios de aceite
- `extends Despesa`; `super(...)` no construtor
- ≥2 atributos próprios
- `@override` em `ficha()`
- **Rastreio:** bloco [2]

### DIV-C-03 — Critérios de aceite
- Composição com `List<Despesa>`
- `void adicionar(Despesa)`
- Texto no README: por que composição
- **Rastreio:** bloco [3]

## Onda 2 — Encapsulamento e demonstração

| Card | Título | Tamanho | Dependências | BDD |
|---|---|---|---|---|
| DIV-C-04 | Privatizar `_despesas`; getters `totalGeral` e `valorPorPessoa` | M | DIV-C-03 | CT-P1-07,08 |
| DIV-C-04b | Implementar `bin/main.dart` com relatório 4 blocos | M | DIV-C-01..04 | CT-P1-09,10 |
| DIV-C-04c | Suíte de testes `dart test` | M | DIV-C-01..04 | plano-testes.md |

### DIV-C-04 — Critérios de aceite
- `_despesas` privada
- Getters calculados (não armazenados)
- Bloco [4] antes/depois de `adicionar()`
- **Rastreio:** bloco [4] + total Flutter (prepara Ex. 5)

### DIV-C-04b — Critérios de aceite
- `dart run bin/main.dart` imprime [1]–[4] em ordem
- Cabeçalhos `===== [N] ... =====`
- Dados coerentes com domínio DivideAí

### DIV-C-04c — Critérios de aceite
- 4 arquivos de teste conforme `dart/plano-testes.md`
- `dart test` verde
- `dart analyze` 0 errors

## Definição de pronto — Epic Parte 1

1. Relatório terminal com 4 blocos ok.
2. Testes e analyze passando.
3. Models prontos para cópia na Parte 2.
4. Cards DIV-C-01..04c em **Done** com `arquivo:linha` preenchido.
