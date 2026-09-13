import 'package:test/test.dart';

import '../bin/models/conta_compartilhada.dart';
import '../bin/models/despesa.dart';

void main() {
  group('Encapsulamento — Exercício 4', () {
    test('T-P1-13: totalGeral com 2 despesas soma corretamente', () {
      final conta = ContaCompartilhada(
        nome: 'Teste',
        participantes: ['A', 'B'],
      );
      conta.adicionar(Despesa(descricao: 'X', valor: 100, pagador: 'A'));
      conta.adicionar(Despesa(descricao: 'Y', valor: 50, pagador: 'B'));

      expect(conta.totalGeral, 150.0);
    });

    test('T-P1-14: após adicionar, totalGeral muda', () {
      final conta = ContaCompartilhada(
        nome: 'Teste',
        participantes: ['A', 'B'],
      );
      conta.adicionar(Despesa(descricao: 'X', valor: 100, pagador: 'A'));
      final antes = conta.totalGeral;

      conta.adicionar(Despesa(descricao: 'Y', valor: 50, pagador: 'B'));

      expect(conta.totalGeral, isNot(equals(antes)));
    });

    test('T-P1-15: totalGeral após adicionar é total antigo + valor novo', () {
      final conta = ContaCompartilhada(
        nome: 'Teste',
        participantes: ['A', 'B'],
      );
      conta.adicionar(Despesa(descricao: 'X', valor: 100, pagador: 'A'));
      final totalAntigo = conta.totalGeral;

      conta.adicionar(Despesa(descricao: 'Y', valor: 50, pagador: 'B'));

      expect(conta.totalGeral, totalAntigo + 50);
      expect(conta.totalGeral, 150.0);
    });

    test('T-P1-16: valorPorPessoa é totalGeral / n participantes', () {
      final conta = ContaCompartilhada(
        nome: 'Teste',
        participantes: ['A', 'B'],
      );
      conta.adicionar(Despesa(descricao: 'X', valor: 100, pagador: 'A'));

      expect(conta.valorPorPessoa, 50.0);
    });

    test('T-P1-17: valorPorPessoa recalcula após adicionar', () {
      final conta = ContaCompartilhada(
        nome: 'Teste',
        participantes: ['A', 'B'],
      );
      conta.adicionar(Despesa(descricao: 'X', valor: 100, pagador: 'A'));
      final antes = conta.valorPorPessoa;

      conta.adicionar(Despesa(descricao: 'Y', valor: 50, pagador: 'B'));

      expect(conta.valorPorPessoa, isNot(equals(antes)));
      expect(conta.valorPorPessoa, 75.0);
    });
  });
}
