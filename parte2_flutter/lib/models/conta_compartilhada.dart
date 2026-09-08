import 'despesa.dart';

class ContaCompartilhada {
  final String nome;
  final List<String> participantes;
  final List<Despesa> _despesas;

  ContaCompartilhada({
    required this.nome,
    required this.participantes,
  }): _despesas = [];

  void adicionar(Despesa despesa) {
    _despesas.add(despesa);
  }

  List<Despesa> get despesas => List<Despesa>.unmodifiable(_despesas);

  int get quantidadeDespesas => _despesas.length;

  double get totalGeral => _despesas.fold(0.0, (soma, d) => soma + d.valor);

  double get valorPorPessoa {
    if (participantes.isEmpty) {
      return 0.0;
    }

    return totalGeral / participantes.length;
  }
}