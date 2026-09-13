import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../models/conta_compartilhada.dart';
import '../models/conta_exemplo.dart';
import '../models/despesa.dart';
import '../theme/app_colors.dart';
import '../widgets/cartao_despesa.dart';
import 'cadastro_page.dart';
import 'detalhe_page.dart';

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

  Future<void> _abrirCadastro() async {
    final nova = await Navigator.of(context).push<Despesa>(
      MaterialPageRoute(builder: (_) => const CadastroPage()),
    );
    if (nova == null) return;
    setState(() => _conta.adicionar(nova));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DivideAí'),
        centerTitle: true,
        backgroundColor: AppColors.gray50,
      ),
      backgroundColor: AppColors.gray50,
      floatingActionButton: FloatingActionButton(
        onPressed: _abrirCadastro,
        tooltip: 'Nova despesa',
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: _ResumoConta(conta: _conta),
          ),
          Expanded(
            child: Material(
              color: AppColors.surfaceOverlay,
              elevation: 4,
              shadowColor: AppColors.shadow.withValues(alpha: 0.18),
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                itemCount: _conta.despesas.length,
                itemBuilder: (context, index) {
                  final despesa = _conta.despesas[index];
                  return CartaoDespesa(
                    despesa: despesa,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => DetalhePage(despesa: despesa),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
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
    // Mesmo espaço interno do antigo card (sem fundo/sombra).
    return Padding(
      padding: const EdgeInsets.all(16),
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