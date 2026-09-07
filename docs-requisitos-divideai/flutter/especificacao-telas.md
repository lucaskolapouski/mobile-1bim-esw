# Especificação de telas — Wireframes textuais

Três telas obrigatórias. Layouts em português; valores vêm dos models.

---

## 1. `home_page.dart` — Lista (Ex. 5, 6, 7, 8, 10)

```text
┌─────────────────────────────────────┐
│ AppBar: [logo] DivideAí             │
├─────────────────────────────────────┤
│ Total geral: R$ 380,00              │  ← conta.totalGeral
│ Por pessoa:  R$  95,00              │  ← conta.valorPorPessoa
│ (4 participantes)                   │
├─────────────────────────────────────┤
│ ┌─────────────────────────────────┐ │
│ │ Pizza          R$ 45,00         │ │  CartaoDespesa
│ │ pago por Ana                    │ │
│ └─────────────────────────────────┘ │
│ ┌─────────────────────────────────┐ │
│ │ Uber           R$ 28,50         │ │
│ │ pago por Bruno                  │ │
│ └─────────────────────────────────┘ │
│ ... (6 cartões, ListView.builder)   │
│                                     │
└─────────────────────────────────────┘
                              [FAB +]
```

### Widgets por seção

| Região | Widgets |
|---|---|
| AppBar | `AppBar`, `title: Row(Icon/Text)` |
| Totais | `Padding` + `Column` + `Text` |
| Lista | `Expanded` + `ListView.builder` |
| FAB | `FloatingActionButton` → cadastro |

### Interações

| Ação | Comportamento |
|---|---|
| Toque no cartão | `Navigator.push` → `DetalhePage(despesa)` |
| FAB | `Navigator.push` → `CadastroPage`; `await` resultado; `setState` + `adicionar` |

---

## 2. `detalhe_page.dart` — Detalhe (Ex. 8)

```text
┌─────────────────────────────────────┐
│ AppBar: Detalhe da despesa    [←]   │
├─────────────────────────────────────┤
│ Descrição:  Uber                    │
│ Valor:      R$ 28,50                │
│ Pagador:    Bruno                   │
│ Data:       15/09/2026              │  ← não no cartão
│ Categoria:  Transporte              │  ← não no cartão
│                                     │
│ [se DespesaParcelada]                 │
│ Parcelas: 3 × R$ 9,50               │
└─────────────────────────────────────┘
```

Mínimo **2 campos** que não aparecem no cartão: `data` e `categoria`.

Opcional: usar `despesa.ficha()` como subtítulo.

---

## 3. `cadastro_page.dart` — Cadastro (Ex. 9)

```text
┌─────────────────────────────────────┐
│ AppBar: Nova despesa          [←]   │
├─────────────────────────────────────┤
│ [📝 Descrição_______________]       │  TextFormField + controller
│ [💰 Valor___________________]       │
│ [👤 Pagador_________________]       │
│                                     │
│         [ Confirmar ]               │  ElevatedButton
└─────────────────────────────────────┘
```

### Validação mínima

| Campo | Regra |
|---|---|
| descrição | não vazio |
| valor | `double.tryParse` sucesso |
| pagador | não vazio |

Em falha: `SnackBar` ou texto de erro — não travar silenciosamente.

---

## Matriz cartão × detalhe

| Campo | Cartão | Detalhe |
|---|---|---|
| descricao | sim | sim |
| valor | sim | sim |
| pagador | sim | sim |
| data | **não** | **sim** |
| categoria | **não** | **sim** |
| info parcelas | não | sim (se parcelada) |

---

## O que NÃO implementar como tela

- Splash navegável
- Login / onboarding
- Configurações
- Tela de edição separada (extra)
