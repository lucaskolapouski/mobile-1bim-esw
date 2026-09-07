# Arquitetura geral — Flutter (Parte 2)

## Princípios

1. **Modelo + UI** — widgets só exibem e capturam; cálculos em `ContaCompartilhada`.
2. **Três telas** — lista, detalhe, cadastro; rotas imperativas com `Navigator.push`.
3. **Estado local** — `StatefulWidget` na home; sem Provider/Bloc (fora do escopo acadêmico).
4. **Cópia manual dos models** — mesmas classes da Parte 1 em `lib/models/`.
5. **Sessão única** — dados de exemplo na abertura; sem persistência.

## Estrutura de pastas

```text
parte2-flutter/lib/
├── main.dart
├── models/
│   ├── despesa.dart
│   ├── despesa_parcelada.dart
│   └── conta_compartilhada.dart
├── screens/
│   ├── home_page.dart       # StatefulWidget — Ex. 5,7,8,10
│   ├── detalhe_page.dart    # StatelessWidget — Ex. 8
│   └── cadastro_page.dart   # StatefulWidget — Ex. 9
└── widgets/
    └── cartao_despesa.dart  # StatelessWidget — Ex. 6
```

## `main.dart`

```dart
void main() {
  runApp(const DivideAiApp());
}

class DivideAiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DivideAí',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
```

**Sem rotas nomeadas** — navegação via `MaterialPageRoute` atende o enunciado.

## Camadas

| Camada | Conteúdo |
|---|---|
| models | Domínio (cópia Parte 1) |
| widgets | Componentes visuais reutilizáveis (`CartaoDespesa`) |
| screens | Telas completas com Scaffold |

## Estado na `HomePage`

```dart
class _HomePageState extends State<HomePage> {
  late ContaCompartilhada _conta;

  @override
  void initState() {
    super.initState();
    _conta = ContaCompartilhadaExemplo.criar(); // 6 itens
  }
}
```

Sugestão: `lib/models/conta_exemplo.dart` ou método estático em factory — **não** misturar lista de 6 despesas dentro do `build()`.

## Comandos

```bash
cd parte2-flutter
flutter pub get
flutter analyze
flutter run
```

## Decisões explícitas

| Decisão | Escolha | Motivo |
|---|---|---|
| Gerenciamento de estado | `setState` local | Exercício 10 exige |
| Navegação | Imperativa `Navigator.push` | Exercício 8 exige |
| Lista | `ListView.builder` | Exercício 7 exige |
| Splash | Nativo do SO ou omitido | Evitar 4ª tela |
| Tema | Material 3, cor do app | Polimento opcional |

Ver também: [`mapa-de-rotas.md`](mapa-de-rotas.md), [`especificacao-telas.md`](especificacao-telas.md).
