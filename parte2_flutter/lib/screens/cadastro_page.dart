import 'package:flutter/material.dart';

import '../models/despesa.dart';
import '../theme/app_colors.dart';

/// Tela de cadastro — Exercício 9 / CREATE-01.
/// No máximo 3 campos; demais atributos usam default da [Despesa].
class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _descricaoController = TextEditingController();
  final _valorController = TextEditingController();
  final _pagadorController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _descricaoController.dispose();
    _valorController.dispose();
    _pagadorController.dispose();
    super.dispose();
  }

  void _confirmar() {
    final descricao = _descricaoController.text.trim();
    final pagador = _pagadorController.text.trim();
    final valor = double.tryParse(
      _valorController.text.trim().replaceAll(',', '.'),
    );

    if (descricao.isEmpty || pagador.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Preencha descrição e pagador.')),
      );
      return;
    }

    if (valor == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Valor inválido. Use um número (ex.: 25.50).'),
        ),
      );
      return;
    }

    // Defaults: quantidade=1, data=now, categoria=Geral (fora do form).
    final despesa = Despesa(
      descricao: descricao,
      valor: valor,
      pagador: pagador,
    );

    Navigator.pop(context, despesa);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova despesa'),
        centerTitle: true,
        backgroundColor: AppColors.gray50,
      ),
      backgroundColor: AppColors.gray50,
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _descricaoController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: 'Descrição',
                prefixIcon: const Icon(Icons.description_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _valorController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: 'Valor',
                prefixIcon: const Icon(Icons.attach_money),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _pagadorController,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (_) => _confirmar(),
              decoration: InputDecoration(
                labelText: 'Pagador',
                prefixIcon: const Icon(Icons.person_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: _confirmar,
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.navy,
                foregroundColor: AppColors.textOnNavy,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
