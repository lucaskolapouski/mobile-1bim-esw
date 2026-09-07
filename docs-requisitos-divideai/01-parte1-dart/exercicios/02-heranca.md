# DOM-02 — Herança (`DespesaParcelada`)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-5](https://jaoromanodev.atlassian.net/browse/DIV-5) · `DOM-02` |
| **RF** | RF-EX-02 |
| **RN** | RN-DOM-02 |
| **Recurso obrigatório** | `extends` |
| **Conceito obrigatório** | `super` no construtor + `@override` de método |
| **Evidência** | Bloco `[2]` — `ficha()` pai e filha, linhas consecutivas |
| **Arquivo alvo** | `parte1_dart/bin/models/despesa_parcelada.dart` |
| **Depende de** | DOM-01 (DIV-4) |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §4 — Especialização por herança
- Anexo — **Parte 1 · Exercício 2**

---

## Regra de negócio

### RN-DOM-02 — Parcelada *é uma* Despesa

Toda despesa parcelada **é uma** despesa (teste "todo X é um Y"). Especializa o pagamento em parcelas; não usa composição aqui.

| Campo próprio | Tipo | Regra |
|---|---|---|
| `numeroParcelas` | `int` | ≥ 2 atributos próprios obrigatórios |
| `valorParcela` **ou** `taxaJuros` | `double` | escolher **um** e manter consistente no projeto |

**RF-EX-02:** `extends Despesa`, `super(...)` nos herdados, `@override String ficha()` acrescentando info de parcelas.

---

## Como precisa ser feito

1. `class DespesaParcelada extends Despesa`.
2. Construtor repassa herdados via `super(...)` / `required super.campo`.
3. `@override ficha()` chama base e acrescenta `", em N parcelas de R$ X"`.
4. Bloco `[2]` imprime `ficha()` comum e parcelada uma abaixo da outra.
5. Teste: `expect(parcelada, isA<Despesa>())`.

```dart
@override
String ficha() =>
    '${super.ficha()}, em $numeroParcelas parcelas de R\$ ${valorParcela.toStringAsFixed(2)}';
```

---

## Critérios de aceite

- [ ] `extends` + `super` + `@override ficha()`
- [ ] ≥2 atributos próprios
- [ ] Bloco `[2]` compara as duas fichas
- [ ] `isA<Despesa>()`

## BDD

CT-P1-03, CT-P1-04

## Rastreio

| # | 2 | Arquivo:linha | `parte1_dart/bin/models/despesa_parcelada.dart:__` | Bloco [2] |
