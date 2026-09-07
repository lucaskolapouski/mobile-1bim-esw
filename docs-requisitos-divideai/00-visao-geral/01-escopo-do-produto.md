# Escopo do produto — DivideAí

## O que o produto faz

App de **sessão única** para rachar conta: um grupo abre uma `ContaCompartilhada`, lança `Despesa`s, vê **total geral** e **valor por pessoa**. Sem login, sem backend, sem persistência entre execuções.

## Escopo funcional

### Dentro do escopo
- Domínio OO em Dart: `Despesa`, `DespesaParcelada`, `ContaCompartilhada`
- Relatório de domínio no terminal (4 blocos: entidade, herança, composição, encapsulamento)
- App Flutter com **3 telas**: lista, detalhe, cadastro
- Lista abre com **6 despesas** de exemplo
- Cadastro de nova despesa (Create) atualiza lista e totais via `setState`
- Totais sempre calculados por getters (nunca armazenados)

### Fora do escopo
- Persistência (banco, SharedPreferences)
- Autenticação / multiusuário online
- CRUD completo (editar/excluir) — opcional, não bloqueia o MVP
- Quarta tela navegável (splash com rota própria, settings, onboarding)
- Pacote Dart compartilhado entre CLI e app (cópia manual dos models)

## Estrutura do repositório

```text
/
├── README.md
├── parte1-dart/                 # domínio + relatório CLI
│   ├── pubspec.yaml
│   └── bin/
│       ├── main.dart
│       └── models/
└── parte2-flutter/              # UI
    ├── pubspec.yaml
    └── lib/
        ├── main.dart
        ├── models/              # cópia das classes da Parte 1
        ├── screens/
        └── widgets/
```

Se as cópias dos models divergirem, **prevalece a da Parte 2**.

## Constraints técnicas do MVP

| Constraint | Motivo no produto |
|---|---|
| Exatamente 3 telas | Fluxo mínimo: listar → detalhar → cadastrar |
| ≤3 campos no formulário | Cadastro rápido; demais atributos usam default |
| Dados só via models | UI não embute literais de domínio |
| `dart analyze` / `flutter analyze` sem errors | Qualidade mínima para merge |
| Tabela de rastreio no README | Ligação feature → arquivo:linha (base dos cards Jira) |

## Features opcionais (não bloqueiam Done)

- Logo / ícone
- Splash nativo do SO (sem rota própria)
- Editar / excluir despesa
- Botão “nova conta” (reset) — sem substituir o fluxo 6 → 7 itens
