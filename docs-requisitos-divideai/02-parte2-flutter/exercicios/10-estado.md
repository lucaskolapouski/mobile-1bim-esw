# STATE-01 — FAB + `setState` (lista e totais)

| Campo | Valor |
|---|---|
| **Card Jira** | [DIV-16](https://jaoromanodev.atlassian.net/browse/DIV-16) · `STATE-01` |
| **RF** | RF-EX-10 |
| **RN** | RN-UI-07 |
| **Recurso obrigatório** | `StatefulWidget` |
| **Conceito obrigatório** | `setState` |
| **Evidência** | 7º item + total atualizado sem reiniciar |
| **Arquivo alvo** | `parte2_flutter/lib/screens/home_page.dart` |

---

## Fonte

- [`contexto-projeto-divide.md`](../../../contexto-projeto-divide.md) §5 — fluxo FAB / Ex. 10 · Anexo **Exercício 10**

---

## Regra de negócio

### RN-UI-07 — Acrescentar, não zerar

Após cadastro: lista **6 → 7** itens. Não apagar o template inicial. Totais mudam via getters (RN-DOM-05), sem atribuição manual.

Encadeamento cobrado na prova:

1. `adicionar()` na `_despesas` privada  
2. `ListView` mostra 7  
3. `totalGeral` recalcula no `build`  
4. Sem `setState`, a UI **não** reage  

**RF-EX-10:** `HomePage` Stateful guarda `ContaCompartilhada`; FAB → cadastro; ao voltar `setState(() => conta.adicionar(despesa))`.

---

## Como precisa ser feito

```dart
Future<void> _abrirCadastro() async {
  final nova = await Navigator.of(context).push<Despesa>(
    MaterialPageRoute(builder: (_) => const CadastroPage()),
  );
  if (nova == null) return;
  setState(() => _conta.adicionar(nova));
}
```

---

## Critérios de aceite

- [ ] `StatefulWidget` + conta no `State`
- [ ] FAB abre CREATE-01
- [ ] 6→7 + totais mudam
- [ ] Mutação dentro de `setState`

## BDD

CT-P2-10, CT-P2-11

## Rastreio

| # | 10 | `home_page.dart:__` | Item novo + total atualizado |
