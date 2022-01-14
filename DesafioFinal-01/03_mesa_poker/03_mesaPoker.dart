class jogadores {
  final String nome;
  final int valor;

  jogadores(this.nome, this.valor);
}

void main() {
//Dados dos jogadores
  final jogador1 = jogadores('Jõao', 300);
  final jogador2 = jogadores('Denise', 500);
  final jogador3 = jogadores('Roberto', 100);
  final jogador4 = jogadores('Pedro', 800);
  final jogador5 = jogadores('Alice', 180);

//listagem dos jogadores
  final listaJogadores = [jogador1, jogador2, jogador3, jogador4, jogador5];

//Valor requisito
  double valorMinimo = 200;
  double valorMaximo = 1000;

//mapeando a lista

  var jogadoresLiberado = [];
  for (var i = 0; i < listaJogadores.length; i++) {
    if (listaJogadores[i].valor < valorMaximo &&
        listaJogadores[i].valor > valorMinimo) {
      jogadoresLiberado.add(listaJogadores[i].nome);
    } ;
  }

  //imprimindo resultado
  String statusDaPartida =
      "Valor mínimo da mesa: R\$ $valorMinimo\nValor máximo da mesa: R\$ $valorMaximo\n\nJogadores da mesa:\n\n${jogadoresLiberado.join("\n")}";

  print(statusDaPartida);
}
