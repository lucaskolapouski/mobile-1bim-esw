import 'models/despesa.dart';

void main(List<String> arguments) {
  
  Despesa despesa = Despesa(descricao: "Pizza", valor: 60, pagador: "Gabriel", categoria: "Alimentação");
  
  print("");
  print("===== [1] ENTIDADE PRINCIPAL =====");
  print(despesa);
  print("");
}
