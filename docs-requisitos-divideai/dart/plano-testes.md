# Plano de testes — Parte 1

Comando: `dart test` (adicionar `test: ^1.x` em `dev_dependencies`).

Estrutura sugerida pelo enunciado e contexto:

```text
test/
├── despesa_test.dart
├── despesa_parcelada_test.dart
├── conta_compartilhada_test.dart
└── encapsulamento_test.dart
```

---

## `despesa_test.dart` — Exercício 1

| ID | Caso | Assert |
|---|---|---|
| T-P1-01 | Construtor nomeado com campos required | atributos iguais aos passados |
| T-P1-02 | Omitir `categoria` | `categoria == 'Geral'` |
| T-P1-03 | Omitir `data` | `data` próximo de `DateTime.now()` (tolerância 1s) |
| T-P1-04 | `ficha()` contém descrição e valor formatado | string não vazia |
| T-P1-04b | Omitir `quantidade` | `quantidade == 1` (4º tipo `int`) |
| T-P1-04c | Classe cobre ≥4 tipos | campos `String`, `int`, `double`, `DateTime` presentes |

```dart
test('categoria default é Geral', () {
  final d = Despesa(descricao: 'X', valor: 1.0, pagador: 'A');
  expect(d.categoria, 'Geral');
});
```

---

## `despesa_parcelada_test.dart` — Exercício 2

| ID | Caso | Assert |
|---|---|---|
| T-P1-05 | `ficha()` parcelada ≠ `ficha()` comum mesmo dados base | strings diferentes |
| T-P1-06 | `ficha()` menciona parcelas | contém `numeroParcelas` ou valor da parcela |
| T-P1-07 | Instância é `Despesa` | `expect(p, isA<Despesa>())` |
| T-P1-08 | `super` repassa descricao | `p.descricao == 'Teste'` |

---

## `conta_compartilhada_test.dart` — Exercício 3

| ID | Caso | Assert |
|---|---|---|
| T-P1-09 | Conta vazia | `quantidadeDespesas == 0` |
| T-P1-10 | `adicionar` uma vez | `quantidadeDespesas == 1` |
| T-P1-11 | `adicionar` duas vezes | `quantidadeDespesas == 2` |
| T-P1-12 | `despesas` é imutável externamente | `expect(() => lista.add(...), throwsA(anything))` se exposto unmodifiable |

---

## `encapsulamento_test.dart` — Exercício 4

| ID | Caso | Assert |
|---|---|---|
| T-P1-13 | `totalGeral` com 2 despesas | soma correta |
| T-P1-14 | Após `adicionar`, `totalGeral` muda | `isNot(equals(antes))` |
| T-P1-15 | Valor exato após adicionar | `equals(totalAntigo + valorNovo)` |
| T-P1-16 | `valorPorPessoa` | `totalGeral / n` participantes |
| T-P1-17 | `valorPorPessoa` após adicionar | recalcula sem atribuição manual |

```dart
test('totalGeral recalcula após adicionar', () {
  final conta = ContaCompartilhada(
    nome: 'Teste',
    participantes: ['A', 'B'],
    despesasIniciais: [Despesa(descricao: 'X', valor: 100, pagador: 'A')],
  );
  final antes = conta.totalGeral;
  conta.adicionar(Despesa(descricao: 'Y', valor: 50, pagador: 'B'));
  expect(conta.totalGeral, isNot(equals(antes)));
  expect(conta.totalGeral, 150.0);
  expect(conta.valorPorPessoa, 75.0);
});
```

---

## Critério de suíte

- [ ] `dart test` — 100% dos testes acima passando
- [ ] Nenhum teste depende de ordem de execução
- [ ] Fixtures mínimas (sem Flutter)

## Relação BDD ↔ testes

| BDD | Teste |
|---|---|
| CT-P1-01, CT-P1-02 | T-P1-01..04 |
| CT-P1-03, CT-P1-04 | T-P1-05..08 |
| CT-P1-05, CT-P1-06 | T-P1-09..12 |
| CT-P1-07, CT-P1-08 | T-P1-13..17 |

## Parte 2 — testes

Testes de widget (`flutter test`) **não são exigidos** pelo enunciado. Opcional para o card extra de qualidade.
