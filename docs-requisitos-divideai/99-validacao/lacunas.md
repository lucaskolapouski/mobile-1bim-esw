# Lacunas e decisões pendentes

| ID | Lacuna | Impacto | Decisão | Status |
|---|---|---|---|---|
| L-01 | `parte1_dart` vs `parte1-dart` | Estrutura | Alinhar ou documentar no README | Aberta |
| L-02 | `bin/parte1_dart.dart` vs `bin/main.dart` | CLI | Renomear para `main.dart` | Aberta |
| L-03 | Models em stub vs `bin/models/` | Domínio | Criar `bin/models/` | Aberta |
| L-04 | Splash | Escopo de telas | Só SO / automático, sem rota | Decidido |
| L-05 | CRUD vs Create | Escopo Ex. 9 | Só cadastro | Decidido |
| L-06 | Reset / “nova conta” | Conflito com 6→7 | Extra; não substitui fluxo | Decidido |
| L-07 | `valorParcela` vs `taxaJuros` | Modelagem | Escolher um e fixar na spec | Aberta |
| L-08 | `DespesaParcelada` nos 6 itens da UI? | Demo herança | Opcional (1 de 6) | Aberta |
| L-09 | ~~Despesa só 3 tipos (faltava `int`)~~ | Ex. 1 enunciado | Campo `quantidade` (`int`, default 1) | **Resolvida** |

## Código × docs

| Item | Docs | Código atual |
|---|---|---|
| CLI | Relatório 4 blocos | stub Hello world |
| UI | 3 telas DivideAí | counter demo |
| Models | 3 classes | não implementados |

## Próximas ações

1. Implementar domínio (`scrumban/backlog-parte1.md`)
2. Fechar L-01..L-03
3. Preencher tabela de rastreio ao concluir cada card
