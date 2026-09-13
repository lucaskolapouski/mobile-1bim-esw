import 'package:test/test.dart';

import '../bin/models/conta_compartilhada.dart';
import '../bin/models/despesa.dart';

void main() {
  group('ContaCompartilhada — Exercício 3', () {
    test('T-P1-09: conta vazia tem zero despesas', () {
      final conta = ContaCompartilhada(
        nome: 'Teste',
        participantes: ['A', 'B'],
      );

      expect(conta.quantidadeDespesas, 0);
    });

    test('T-P1-10: adicionar uma vez incrementa para 1', () {
      final conta = ContaCompartilhada(
        nome: 'Teste',
        participantes: ['A', 'B'],
      );
      conta.adicionar(Despesa(descricao: 'Pizza', valor: 45, pagador: 'A'));

      expect(conta.quantidadeDespesas, 1);
    });

    test('T-P1-11: adicionar duas vezes incrementa para 2', () {
      final conta = ContaCompartilhada(
        nome: 'Teste',
        participantes: ['A', 'B'],
      );
      conta.adicionar(Despesa(descricao: 'Pizza', valor: 45, pagador: 'A'));
      conta.adicionar(Despesa(descricao: 'Uber', valor: 28.5, pagador: 'B'));

      expect(conta.quantidadeDespesas, 2);
    });

    test('T-P1-12: lista despesas é imutável por fora', () {
      final conta = ContaCompartilhada(
        nome: 'Teste',
        participantes: ['A'],
      );
      conta.adicionar(Despesa(descricao: 'X', valor: 10, pagador: 'A'));

      expect(
        () => conta.despesas.add(
          Despesa(descricao: 'Y', valor: 5, pagador: 'A'),
        ),
        throwsA(anything),
      );
      expect(conta.quantidadeDespesas, 1);
    });
  });
}
