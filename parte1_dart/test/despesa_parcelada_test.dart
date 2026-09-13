import 'package:test/test.dart';

import '../bin/models/despesa.dart';
import '../bin/models/despesa_parcelada.dart';

void main() {
  group('DespesaParcelada — Exercício 2', () {
    test('T-P1-05: ficha parcelada difere da ficha comum', () {
      final comum = Despesa(
        descricao: 'Churrasqueira',
        valor: 300,
        pagador: 'Henrique',
      );
      final parcelada = DespesaParcelada(
        descricao: 'Churrasqueira',
        valor: 300,
        pagador: 'Henrique',
        numeroParcelas: 3,
        valorParcela: 100,
      );

      expect(parcelada.ficha(), isNot(equals(comum.ficha())));
    });

    test('T-P1-06: ficha menciona parcelas', () {
      final p = DespesaParcelada(
        descricao: 'Notebook',
        valor: 3000,
        pagador: 'Ana',
        numeroParcelas: 10,
        valorParcela: 300,
      );
      final ficha = p.ficha();

      expect(
        ficha.contains('10') || ficha.toLowerCase().contains('parcela'),
        isTrue,
      );
    });

    test('T-P1-07: instância é Despesa (herança)', () {
      final p = DespesaParcelada(
        descricao: 'Teste',
        valor: 90,
        pagador: 'B',
        numeroParcelas: 3,
        valorParcela: 30,
      );

      expect(p, isA<Despesa>());
    });

    test('T-P1-08: super repassa descricao', () {
      final p = DespesaParcelada(
        descricao: 'Teste',
        valor: 90,
        pagador: 'B',
        numeroParcelas: 3,
        valorParcela: 30,
      );

      expect(p.descricao, 'Teste');
    });
  });
}
