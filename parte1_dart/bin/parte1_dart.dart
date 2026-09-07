import 'models/conta_compartilhada.dart';
import 'models/despesa.dart';
import 'models/despesa_parcelada.dart';

void main(List<String> arguments) {
  Despesa despesa = Despesa(
    descricao: 'Churrasqueira',
    valor: 300,
    pagador: 'Henrique',
  );
  DespesaParcelada despesaParcelada = DespesaParcelada(
    descricao: 'Churrasqueira',
    valor: 300,
    pagador: 'Henrique',
    numeroParcelas: 3,
    valorParcela: 100,
  );

  bloco01(despesa);
  bloco02(despesa, despesaParcelada);

  ContaCompartilhada conta = ContaCompartilhada(
    nome: 'Viagem de fim de semana',
    participantes: ['Gabriel', 'Henrique'],
  );
  conta.adicionar(
    Despesa(
      descricao: 'Pizza',
      valor: 45,
      pagador: 'Gabriel',
      categoria: 'Alimentação',
    ),
  );
  conta.adicionar(
    Despesa(descricao: 'Passagem de ônibus', valor: 120, pagador: 'Henrique'),
  );
  conta.adicionar(
    Despesa(
      descricao: 'Combustível',
      valor: 80,
      pagador: 'Gabriel',
      categoria: 'Transporte',
    ),
  );

  bloco03(conta);
  bloco04(conta);
}

void bloco01(Despesa despesa) {
  print('===== [1] ENTIDADE PRINCIPAL =====');
  print(despesa);
  print('');
}

void bloco02(Despesa despesa, DespesaParcelada despesaParcelada) {
  print('===== [2] HERANÇA =====');
  print('Despesa comum -> ficha: ${despesa.ficha()}');
  print('Despesa parcelada -> ficha: ${despesaParcelada.ficha()}');
  print('');
}

void bloco03(ContaCompartilhada conta) {
  print('===== [3] COMPOSIÇÃO =====');
  print('Conta "${conta.nome}" contém ${conta.quantidadeDespesas} despesas:');
  for (final despesa in conta.despesas) {
    print('  - ${despesa.descricao}');
  }
  print('');
}

void bloco04(ContaCompartilhada conta) {
  print('===== [4] ENCAPSULAMENTO =====');
  print(
    'Conta "${conta.nome}" -> total geral (calculado): '
    'R\$ ${conta.totalGeral.toStringAsFixed(2)}',
  );
  print(
    'Conta "${conta.nome}" -> valor por pessoa (calculado): '
    'R\$ ${conta.valorPorPessoa.toStringAsFixed(2)}',
  );
  print('Após adicionar "Estacionamento" (R\$ 30.00):');
  conta.adicionar(
    Despesa(descricao: 'Estacionamento', valor: 30, pagador: 'Gabriel'),
  );
  print('  -> total geral: R\$ ${conta.totalGeral.toStringAsFixed(2)}');
  print(
    '  -> valor por pessoa: R\$ ${conta.valorPorPessoa.toStringAsFixed(2)}',
  );
  print('');
}
