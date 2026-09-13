# DivideAí — Rachar a Conta

Projeto acadêmico de **Programação para Dispositivos Móveis** (4º ESW B).

## Integrantes

- Lucas Kolapouski Serafim
- João Pedro Romano

## Tema — DivideAí

DivideAí modela despesas individuais (`Despesa`) agrupadas em uma conta compartilhada (`ContaCompartilhada`), com suporte a despesas parceladas (`DespesaParcelada`) via herança. Serve para rachar a conta em restaurante, viagem, casa ou compras em grupo.

**Composição vs herança:** uma conta *tem* despesas (composição — a conta não “é” uma despesa). Uma despesa parcelada *é uma* despesa (herança), pois compartilha os mesmos atributos base e acrescenta informação de parcelas.

## Estrutura

```text
mobile-1bim-esw/
├── README.md
├── contexto-projeto-divide.md
├── parte1_dart/          ← Dart puro (domínio + relatório CLI + testes)
└── parte2_flutter/       ← Flutter (lista, detalhe, cadastro)
```

## Como rodar

### Parte 1 — relatório no terminal

```bash
cd parte1_dart
dart run
```

### Parte 1 — testes

```bash
cd parte1_dart
dart test
```

### Parte 2 — app

```bash
cd parte2_flutter
flutter pub get
flutter run
```

## Tabela de rastreio

| # | Exercício | Arquivo e linha | O que aparece na tela |
|---|---|---|---|
| 1 | Entidade principal | `parte1_dart/bin/models/despesa.dart:1` | Bloco [1] do relatório |
| 2 | Herança | `parte1_dart/bin/models/despesa_parcelada.dart:3` | Bloco [2] do relatório |
| 3 | Composição | `parte1_dart/bin/models/conta_compartilhada.dart:3` | Bloco [3] do relatório |
| 4 | Encapsulamento | `parte1_dart/bin/models/conta_compartilhada.dart:21` | Bloco [4] e o total no topo da tela de lista |
| 5 | Estrutura de tela | `parte2_flutter/lib/screens/home_page.dart:42` | AppBar e corpo da tela inicial |
| 6 | Cartão | `parte2_flutter/lib/widgets/cartao_despesa.dart:18` | Cada item da lista |
| 7 | Lista | `parte2_flutter/lib/screens/home_page.dart:67` | Lista rolável com seis itens |
| 8 | Navegação | `parte2_flutter/lib/screens/home_page.dart:75` | Toque no item abre o detalhe |
| 9 | Formulário | `parte2_flutter/lib/screens/cadastro_page.dart:76` | Tela de cadastro |
| 10 | Estado | `parte2_flutter/lib/screens/home_page.dart:37` | Item novo na lista e total atualizado |

## Qualidade (QA-01)

Comandos verificados nesta entrega:

- `dart analyze` (parte1_dart) — zero errors
- `flutter analyze` (parte2_flutter) — zero errors
- `dart test` (parte1_dart) — 19 testes passando
- Checklist: [`docs-requisitos-divideai/99-validacao/checklist-entrega.md`](docs-requisitos-divideai/99-validacao/checklist-entrega.md)
