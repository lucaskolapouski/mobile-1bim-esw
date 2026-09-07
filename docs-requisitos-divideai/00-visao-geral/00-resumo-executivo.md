# Resumo executivo — DivideAí

Pacote de requisitos do produto **DivideAí** (divisor de despesas), com BDD e backlog Jira. Duas camadas: domínio Dart (CLI) + UI Flutter.

## Números

| Artefato | Qtd |
|---|---|
| Features obrigatórias | 10 |
| Classes de domínio | `Despesa`, `DespesaParcelada`, `ContaCompartilhada` |
| Telas Flutter | 3 (lista, detalhe, cadastro) |
| Blocos do relatório CLI | 4 |
| RF / RN / RNF | 10 / ~8 / ~6 |
| Cenários BDD | ~25 |
| Cards Jira | 14 (domínio + UI + entrega) |

## Produto em uma frase

**DivideAí** registra despesas de um grupo, calcula total e valor por pessoa, com modelo OO demonstrável no terminal e app Flutter de três telas.

## Domínio

| Entidade | Papel | Relação |
|---|---|---|
| `Despesa` | Item de gasto | composta pela conta |
| `DespesaParcelada` | Despesa em parcelas | herda `Despesa` |
| `ContaCompartilhada` | Agrupador da sessão | tem `List<Despesa>` |

> DivideAí modela despesas (`Despesa`) em uma conta (`ContaCompartilhada`), com parceladas (`DespesaParcelada`) via herança.

## Caminho crítico

1. Domínio + relatório CLI + `dart test`
2. Copiar models para Flutter
3. Telas na ordem 5 → 6 → 7 → 8 → 9 → 10
4. Preencher tabela de rastreio (`arquivo:linha`)
5. `dart analyze` / `flutter analyze` sem errors
6. Smoke do fluxo: lista → detalhe → cadastro → lista com total atualizado

## Fluxo feliz (UI)

1. Abre na lista com 6 itens + totais no topo  
2. Toque → detalhe (≥2 campos extras vs cartão)  
3. FAB → cadastro (≤3 campos) → confirma  
4. Lista com 7 itens e totais recalculados  

## Navegação do pacote

- Features: `01-parte1-dart/`, `02-parte2-flutter/`
- Specs: `dart/`, `flutter/`
- Cards: `scrumban/`
- Pendências: `99-validacao/lacunas.md`
