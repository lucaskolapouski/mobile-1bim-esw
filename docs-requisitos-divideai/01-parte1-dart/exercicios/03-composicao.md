# DOM-03 — Composição (`ContaCompartilhada`)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-7](https://jaoromanodev.atlassian.net/browse/DIV-7) · `DOM-03` |
| **RF** | RF-EX-03 |
| **RN** | RN-DOM-03 |
| **Recurso obrigatório** | atributo `List<T>` de outra classe do domínio |
| **Conceito obrigatório** | distinção **"é um" vs "tem um"** |
| **Evidência** | Bloco `[3]` — contagem + itens, um por linha |
| **Arquivo alvo** | `parte1_dart/bin/models/conta_compartilhada.dart` |
| **Depende de** | DOM-01 (DIV-4) |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §4 — Agrupador por composição
- Anexo — **Parte 1 · Exercício 3**

---

## Regra de negócio

### RN-DOM-03 — Conta *tem* despesas (não *é* despesa)

`ContaCompartilhada` agrupa a sessão: nome da conta + participantes + lista de `Despesa`. É a espinha dorsal dos fluxos 3, 4, 7 e 10.

| Campo | Tipo | Regra |
|---|---|---|
| `nome` | `String` | ex.: "Jantar de sexta", "Viagem SP" |
| `participantes` | `List<String>` | pessoas que dividem |
| `_despesas` | `List<Despesa>` | composição; tornar privada no DOM-04 |
| `adicionar(Despesa)` | método | usado no STATE-01 / Ex. 10 |

**RF-EX-03:** classe agrupadora com `List<Despesa>` + `void adicionar(Despesa)`.

**README (obrigatório):** 1–2 frases justificando composição, não herança.

---

## Como precisa ser feito

1. Criar `ContaCompartilhada` com lista interna de `Despesa`.
2. Implementar `adicionar` (mutação da lista).
3. Expor leitura (`despesas` unmodifiable / `quantidadeDespesas`).
4. Bloco `[3]` imprime nome, quantidade e descrições.
5. Documentar no README raiz: *"tem despesas, não é uma despesa"*.

---

## Critérios de aceite

- [ ] `List<Despesa>` (composição)
- [ ] `void adicionar(Despesa)`
- [ ] Bloco `[3]` ok
- [ ] Justificativa no README

## BDD

CT-P1-05, CT-P1-06

## Rastreio

| # | 3 | Arquivo:linha | `parte1_dart/bin/models/conta_compartilhada.dart:__` | Bloco [3] |
