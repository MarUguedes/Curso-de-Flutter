
void main() {

//listagem dos jogadores
  List listaJogadores = ['joao', 300 ,'Denise' ,500, 'Roberto', 100 ,'Pedro', 800 ,'Alice', 180];

//Valor requisito
  double valorMinimo = 200;
  double valorMaximo = 1000;

//mapeando a lista

  var jogadoresLiberado = [];
  for (var i = 0; i < listaJogadores.length; i+2) {
    if (listaJogadores[i+1] < valorMaximo ) {
      jogadoresLiberado.add(listaJogadores[i]);
    } ;
  }

  //imprimindo resultado
  String statusDaPartida =
      "Valor mínimo da mesa: R\$ $valorMinimo\nValor máximo da mesa: R\$ $valorMaximo\n\nJogadores da mesa:\n\n${jogadoresLiberado.join("\n")}";

  print(statusDaPartida);
}
