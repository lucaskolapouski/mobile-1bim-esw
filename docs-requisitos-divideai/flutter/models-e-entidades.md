# Models e entidades — Flutter

As classes em `lib/models/` são **cópia manual** da Parte 1. Especificação canônica: [`dart/especificacao-classes.md`](../dart/especificacao-classes.md).

## Checklist de cópia

- [ ] `despesa.dart` — idêntico à Parte 2 (prevalece sobre Parte 1 se divergir)
- [ ] `despesa_parcelada.dart`
- [ ] `conta_compartilhada.dart`
- [ ] Imports ajustados (sem `package:parte1_dart/...` se existir)

## Arquivo auxiliar sugerido: `conta_exemplo.dart`

Centraliza os 6 itens iniciais — evita poluir `home_page.dart`.

```dart
class ContaCompartilhadaExemplo {
  static ContaCompartilhada criar() {
    return ContaCompartilhada(
      nome: 'Jantar e passeio — setembro',
      participantes: ['Ana', 'Bruno', 'Carla', 'Diego'],
      despesasIniciais: [
        Despesa(descricao: 'Pizza', valor: 45.00, pagador: 'Ana', categoria: 'Restaurante'),
        Despesa(descricao: 'Uber', valor: 28.50, pagador: 'Bruno', categoria: 'Transporte'),
        Despesa(descricao: 'Mercado', valor: 87.30, pagador: 'Carla', categoria: 'Compras'),
        Despesa(descricao: 'Gasolina', valor: 120.00, pagador: 'Diego', categoria: 'Transporte'),
        Despesa(descricao: 'Cinema', valor: 64.00, pagador: 'Ana', categoria: 'Lazer'),
        Despesa(descricao: 'Farmácia', valor: 35.20, pagador: 'Bruno', categoria: 'Saúde'),
      ],
    );
  }
}
```

**Total:** R$ 380,00 · **4 participantes** → R$ 95,00/pessoa

## Uso na UI

| Tela | Classes usadas |
|---|---|
| `HomePage` | `ContaCompartilhada`, `Despesa` |
| `DetalhePage` | `Despesa`, `DespesaParcelada` (type check opcional) |
| `CadastroPage` | constrói `Despesa` |
| `CartaoDespesa` | `Despesa` |

## Regra do enunciado

> Nenhum dado do domínio pode ser escrito direto no widget.

Permitido no widget: rótulos de UI ("Total geral", "Nova despesa").  
Proibido: `"Pizza"`, `45.00` como literal de item — deve vir do objeto.
