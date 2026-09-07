# DOM-06 — Suíte `dart test`

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-9](https://jaoromanodev.atlassian.net/browse/DIV-9) · `DOM-06` |
| **RF** | RF-QA-P1 |
| **RN** | RN-QA-01 |
| **Comando** | `dart test` |
| **Depende de** | DOM-01..04 |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §6 — Testes unitários (Parte 1)
- Spec detalhada: [`dart/plano-testes.md`](../../dart/plano-testes.md)

---

## Regra de negócio

### RN-QA-01 — Domínio regressível sem UI

Cada fatia OO tem arquivo de teste. Falha de getter/herança/adicionar deve quebrar o CI/`dart test` antes do Flutter.

| Arquivo | Cobre |
|---|---|
| `test/despesa_test.dart` | construtor, default `categoria` |
| `test/despesa_parcelada_test.dart` | `ficha` diferente, `isA<Despesa>` |
| `test/conta_compartilhada_test.dart` | `adicionar` +1 |
| `test/encapsulamento_test.dart` | `totalGeral` / `valorPorPessoa` antes/depois |

---

## Como precisa ser feito

1. `dev_dependency: test` no `pubspec.yaml`.
2. Implementar casos do plano de testes (T-P1-01 … T-P1-17).
3. `dart test` 100% verde.

---

## Critérios de aceite

- [ ] Quatro arquivos de teste presentes
- [ ] `dart test` passa
- [ ] Casos de default, herança, `adicionar`, totais cobertos
