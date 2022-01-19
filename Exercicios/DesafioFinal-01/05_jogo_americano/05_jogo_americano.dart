import '../03_mesa_poker/teste.dart';

class jodarores {
  String nome;
  int numero;
  jodarores(this.nome, this.numero);
}

void main() {
  final jogadorA = jodarores('Amanda', 2);
  final jogadorB = jodarores('Sabrina', 1);
  final jogadorC = jodarores('Samanta', 1);
  final jogadorD = jodarores('Carina', 2);
  final jogadorE = jodarores('Beatriz', 3);
  var goleiro;

  List jogadores = [jogadorA, jogadorB, jogadorC, jogadorD, jogadorE];

  var somaValores = [
    jogadorA.numero,
    jogadorB.numero,
    jogadorC.numero,
    jogadorD.numero,
    jogadorE.numero
  ].reduce((value, element) => value + element);

  var ateOElemento =  somaValores - jogadores.length;

  if (ateOElemento== 0) {
    goleiro = "${jogadores.last}";
  } else {
    for (var i = 0; i <= ateOElemento-1; i++) {
      goleiro = jogadores[i].nome;
    }
  }
  
  print('$goleiro.');
}
