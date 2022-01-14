

void main() {
  final valorMinimo = 200;
  final valorMaximo = 1000;
  List jogadores = [
    {'nome': 'João', 'valor': 300},
    {'nome': 'Denise', 'valor': 500},
    {'nome': 'Roberto', 'valor': 100},
    {'nome': 'Pedro', 'valor': 800},
    {'nome': 'Alice', 'valor': 180}
  ];
  var jogadoresLiberado = [];

  for (var i = 0; i < jogadores.length; i++) {
    if (jogadores[i].valor < valorMinimo || jogadores[i].valor > valorMaximo) {
      jogadores.remove(jogadores[i]);
    } else {
      jogadoresLiberado.add(jogadores[i]);
    }
  }
  print(jogadoresLiberado);
}
