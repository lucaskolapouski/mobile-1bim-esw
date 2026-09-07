class Despesa {
  final String descricao;
  final double valor;
  final String pagador;
  final DateTime data;
  final String categoria;
  final int quantidade;

  Despesa({
    required this.descricao,
    required this.valor,
    required this.pagador,
    DateTime? data,
    this.categoria = 'Geral',
    this.quantidade = 1,
  }) : data = data ?? DateTime.now();

  String ficha() {
    return '$descricao | R\$ ${valor.toStringAsFixed(2)} | pago por $pagador';
  }

  @override
  String toString() {
    return 'Despesa: $descricao | R\$ ${valor.toStringAsFixed(2)} | Quantidade: $quantidade | pago por $pagador | ${_formatarData(data)} | Categoria: $categoria';
  }

  String _formatarData(DateTime data) {
    return '${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year}';
  }
}