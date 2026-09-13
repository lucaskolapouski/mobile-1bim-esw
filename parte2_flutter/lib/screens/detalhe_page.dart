import 'package:flutter/material.dart';

import '../models/despesa.dart';
import '../theme/app_colors.dart';

/// Tela de detalhe — Exercício 8 / DETAIL-01.
/// Recebe a [Despesa] tocada pelo construtor.
class DetalhePage extends StatelessWidget {
  final Despesa despesa;

  const DetalhePage({super.key, required this.despesa});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
        centerTitle: true,
        backgroundColor: AppColors.gray50,
      ),
      backgroundColor: AppColors.gray50,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: AppColors.elevation1(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  despesa.descricao,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  _formatarMoeda(despesa.valor),
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: AppColors.navy,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                _CampoDetalhe(
                  rotulo: 'Pago por',
                  valor: despesa.pagador,
                  icone: Icons.person_outline,
                ),
                // Campos que NÃO aparecem no cartão da lista (≥2 exigidos).
                _CampoDetalhe(
                  rotulo: 'Categoria',
                  valor: despesa.categoria,
                  icone: Icons.category_outlined,
                ),
                _CampoDetalhe(
                  rotulo: 'Data',
                  valor: _formatarData(despesa.data),
                  icone: Icons.calendar_today_outlined,
                ),
                _CampoDetalhe(
                  rotulo: 'Quantidade',
                  valor: '${despesa.quantidade}',
                  icone: Icons.numbers_outlined,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CampoDetalhe extends StatelessWidget {
  final String rotulo;
  final String valor;
  final IconData icone;

  const _CampoDetalhe({
    required this.rotulo,
    required this.valor,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icone, size: 20, color: AppColors.textSecondary),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rotulo,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: AppColors.textMuted,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  valor,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String _formatarMoeda(double valor) {
  return 'R\$ ${valor.toStringAsFixed(2)}';
}

String _formatarData(DateTime data) {
  final dia = data.day.toString().padLeft(2, '0');
  final mes = data.month.toString().padLeft(2, '0');
  return '$dia/$mes/${data.year}';
}
