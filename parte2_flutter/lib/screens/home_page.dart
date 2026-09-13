import 'package:flutter/material.dart';

import '../models/conta_compartilhada.dart';
import '../models/conta_exemplo.dart';
import '../widgets/cartao_despesa.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ContaCompartilhada _conta;

  @override
  void initState() {
    super.initState();
    _conta = ContaCompartilhadaExemplo.criar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _ResumoConta(conta: _conta),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _conta.despesas.length,
                itemBuilder: (context, index) {
                  final despesa = _conta.despesas[index];
                  return CartaoDespesa(despesa: despesa);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ResumoConta extends StatelessWidget {
  final ContaCompartilhada conta;

  const _ResumoConta({
    required this.conta,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _NomeConta(nome: conta.nome),
          ),
          const SizedBox(width: 24),
          _ValorResumo(
            rotulo: 'Total geral',
            valor: conta.totalGeral,
          ),
          const SizedBox(width: 24),
          _ValorResumo(
            rotulo: 'Por pessoa',
            valor: conta.valorPorPessoa,
            alinhamento: CrossAxisAlignment.end,
          ),
        ],
      ),
    );
  }
}

class _NomeConta extends StatelessWidget {
  final String nome;

  const _NomeConta({
    required this.nome,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Conta',
          style: theme.textTheme.labelMedium,
        ),
        const SizedBox(height: 4),
        Text(
          nome,
          style: theme.textTheme.titleMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _ValorResumo extends StatelessWidget {
  final String rotulo;
  final double valor;
  final CrossAxisAlignment alinhamento;

  const _ValorResumo({
    required this.rotulo,
    required this.valor,
    this.alinhamento = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: alinhamento,
      children: [
        Text(
          rotulo,
          style: theme.textTheme.labelMedium,
        ),
        const SizedBox(height: 4),
        Text(
          _formatarMoeda(valor),
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}

String _formatarMoeda(double valor) {
  return 'R\$ ${valor.toStringAsFixed(2)}';
}