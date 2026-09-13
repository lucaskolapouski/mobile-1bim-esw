import 'package:test/test.dart';

import '../bin/models/despesa.dart';

void main() {
  group('Despesa — Exercício 1', () {
    test('T-P1-01: construtor nomeado preenche campos required', () {
      final d = Despesa(
        descricao: 'Pizza',
        valor: 45.0,
        pagador: 'Ana',
        categoria: 'Restaurante',
        quantidade: 2,
      );

      expect(d.descricao, 'Pizza');
      expect(d.valor, 45.0);
      expect(d.pagador, 'Ana');
      expect(d.categoria, 'Restaurante');
      expect(d.quantidade, 2);
    });

    test('T-P1-02: omitir categoria usa default Geral', () {
      final d = Despesa(descricao: 'X', valor: 1.0, pagador: 'A');
      expect(d.categoria, 'Geral');
    });

    test('T-P1-03: omitir data usa DateTime.now (tolerância 1s)', () {
      final antes = DateTime.now();
      final d = Despesa(descricao: 'X', valor: 1.0, pagador: 'A');
      final depois = DateTime.now();

      expect(
        !d.data.isBefore(antes.subtract(const Duration(seconds: 1))) &&
            !d.data.isAfter(depois.add(const Duration(seconds: 1))),
        isTrue,
      );
    });

    test('T-P1-04: ficha contém descrição e valor formatado', () {
      final d = Despesa(descricao: 'Uber', valor: 28.5, pagador: 'Bia');
      final ficha = d.ficha();

      expect(ficha, isNotEmpty);
      expect(ficha, contains('Uber'));
      expect(ficha, contains('28.50'));
    });

    test('T-P1-04b: omitir quantidade usa default 1', () {
      final d = Despesa(descricao: 'X', valor: 1.0, pagador: 'A');
      expect(d.quantidade, 1);
    });

    test('T-P1-04c: classe cobre ≥4 tipos (String, int, double, DateTime)', () {
      final d = Despesa(
        descricao: 'Mercado',
        valor: 87.3,
        pagador: 'Carlos',
        quantidade: 3,
        data: DateTime(2026, 9, 13),
      );

      expect(d.descricao, isA<String>());
      expect(d.quantidade, isA<int>());
      expect(d.valor, isA<double>());
      expect(d.data, isA<DateTime>());
    });
  });
}
