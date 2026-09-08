import 'despesa.dart';

class DespesaParcelada extends Despesa {
  final int numeroParcelas;
  final double valorParcela;

  DespesaParcelada({
    required super.descricao,
    required super.valor,
    required super.pagador,
    super.data,
    super.categoria,
    super.quantidade,
    required this.numeroParcelas,
    required this.valorParcela,
  });

  @override
  String ficha() {
    return '${super.ficha()}, em $numeroParcelas parcelas de R\$ ${valorParcela.toStringAsFixed(2)}';
  }
}