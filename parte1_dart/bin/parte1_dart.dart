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

  print('===== [1] ENTIDADE PRINCIPAL =====');
  print(despesa);
  print('');

  print('===== [2] HERANÇA =====');
  print('Despesa comum -> ficha: ${despesa.ficha()}');
  print('Despesa parcelada -> ficha: ${despesaParcelada.ficha()}');
  print('');
}
