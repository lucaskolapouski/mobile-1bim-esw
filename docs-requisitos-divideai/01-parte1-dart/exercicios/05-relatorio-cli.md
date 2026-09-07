# DOM-05 — Relatório CLI (4 blocos)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-8](https://jaoromanodev.atlassian.net/browse/DIV-8) · `DOM-05` |
| **RF** | RF-EX-CLI |
| **RN** | RN-CLI-01 |
| **Recurso** | `dart run` · único `bin/main.dart` |
| **Evidência** | Quatro blocos numerados no terminal |
| **Arquivo alvo** | `parte1_dart/bin/main.dart` |
| **Depende de** | DOM-01..04 |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §4 — Relatório da Parte 1 (formato esperado)
- Anexo — **Parte 1** (estrutura dos 4 blocos)

---

## Regra de negócio

### RN-CLI-01 — Um `dart run` = evidência dos 4 exercícios de domínio

Cabeçalhos obrigatórios, nesta ordem:

```text
===== [1] ENTIDADE PRINCIPAL =====
===== [2] HERANÇA =====
===== [3] COMPOSIÇÃO =====
===== [4] ENCAPSULAMENTO =====
```

| Bloco | Conteúdo mínimo |
|---|---|
| `[1]` | dados de uma `Despesa` |
| `[2]` | `ficha()` comum **e** parcelada |
| `[3]` | nome da conta + N itens listados |
| `[4]` | `totalGeral` / `valorPorPessoa` **antes e depois** de `adicionar()` |

**Proibido:** múltiplos executáveis; blocos fora de ordem; totais iguais no `[4]` após adicionar.

---

## Como precisa ser feito

1. Único entrypoint: `bin/main.dart`.
2. Instanciar domínio e imprimir os 4 blocos com `print`.
3. No `[4]`, chamar `conta.adicionar(...)` entre as duas impressões de totais.
4. Validar: `dart run bin/main.dart` (ou comando equivalente documentado no README).

Formato de referência no contexto (domínio DivideAí: Pizza, Passagem, etc.).

---

## Critérios de aceite

- [ ] 4 blocos em ordem com cabeçalhos `===== [N] ... =====`
- [ ] `[2]` compara fichas
- [ ] `[4]` totais mudam após `adicionar`
- [ ] Analyze limpo

## BDD

CT-P1-09, CT-P1-10

## Spec técnica

[`dart/arquitetura.md`](../../dart/arquitetura.md)
