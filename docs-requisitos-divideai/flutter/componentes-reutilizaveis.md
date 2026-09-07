# Componentes reutilizáveis

## `CartaoDespesa` — Exercício 6

| Propriedade | Tipo | Obrigatório |
|---|---|---|
| `despesa` | `Despesa` | sim |
| `onTap` | `VoidCallback?` | não |

### Responsabilidades

- Renderizar descrição, valor formatado, pagador
- Estilo: `Container` + `BoxDecoration` (fundo, `borderRadius`, `boxShadow`)
- Delegar toque ao pai (`HomePage` faz o `Navigator.push`)

### Não fazer

- Navegação dentro do cartão (mantém widget burro e testável)
- `color` + `decoration` no mesmo `Container`
- Strings de domínio hardcoded

---

## Bloco de totais (inline na `HomePage`)

Pode ficar inline ou extrair `ResumoTotaisConta`:

```dart
class ResumoTotaisConta extends StatelessWidget {
  final ContaCompartilhada conta;
  const ResumoTotaisConta({super.key, required this.conta});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Total geral: R\$ ${conta.totalGeral.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.titleLarge),
          Text('Por pessoa: R\$ ${conta.valorPorPessoa.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}
```

> Extrair para widget próprio é organização opcional (não é feature do MVP).

---

## Formatação de moeda

Função local ou extension:

```dart
extension Moeda on double {
  String get emReais => 'R\$ ${toStringAsFixed(2)}';
}
```

---

## Ícone / logo (extra)

- `assets/logo.png` + declaração em `pubspec.yaml`
- Uso na `AppBar` via `Image.asset(height: 32)` ou `leading`
- Não gera card próprio no Jira
