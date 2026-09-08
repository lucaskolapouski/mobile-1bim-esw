import 'conta_compartilhada.dart';
import 'despesa.dart';

class ContaCompartilhadaExemplo {
  static ContaCompartilhada criar() {
    
    ContaCompartilhada conta = ContaCompartilhada(nome: "Jantar e passeio - setembro", participantes: ['Guanabara', 'Renan Santos', 'Lula', 'Bolsonaro', 'Ronaldo Caiado', 'Augusto Cury']);
    
    conta.adicionar(Despesa(descricao: 'Pizza', valor: 45.00, pagador: 'Guanabara', categoria: 'Restaurante'));
    conta.adicionar(Despesa(descricao: 'Uber', valor: 28.50, pagador: 'Lula', categoria: 'Transporte'));
    conta.adicionar(Despesa(descricao: 'Mercado', valor: 87.30, pagador: 'Renan Santos', categoria: 'Compras'));
    conta.adicionar(Despesa(descricao: 'Gasolina', valor: 120.00, pagador: 'Augusto Cury', categoria: 'Transporte'));
    conta.adicionar(Despesa(descricao: 'Cinema', valor: 64.00, pagador: 'Bolsonaro', categoria: 'Lazer'));
    conta.adicionar(Despesa(descricao: 'Farmácia', valor: 35.20, pagador: 'Guanabara', categoria: 'Saúde'));

    return conta;
  }
}