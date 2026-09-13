import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../models/conta_compartilhada.dart';
import '../models/conta_exemplo.dart';
import '../theme/app_colors.dart';

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
    // Remove a splash nativa assim que a lista está pronta (não é 4ª tela).
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DivideAí'),
        centerTitle: true,
      ),
      backgroundColor: AppColors.surfaceSunken,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _ResumoConta(conta: _conta),
            const SizedBox(height: 16),
            const Expanded(
              child: Placeholder(),
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
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(16),
        boxShadow: AppColors.elevation2(),
        border: Border.all(color: AppColors.gray100),
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