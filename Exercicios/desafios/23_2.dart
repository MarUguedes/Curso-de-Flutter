void main() {
  List jogadores = [
    ['Mauricio', 8, 4, 18, 12, 2, 1],
    ['Marcelo', 15, 10, 8, 5, 21, 10],
    ['Tande', 11, 6, 14, 12, 15, 11],
    ['Giovane', 11, 5, 10, 8, 18, 12],
    ['Paulo', 9, 2, 15, 12, 15, 10],
    ['Carlos', 10, 3, 10, 3, 12, 8]
  ];

  String nome = "";
  int saques = 0;
  int saquesEfetivos = 0;
  int bloqueios = 0;
  int bloqueiosEfetivos = 0;
  int ataques = 0;
  int ataquesEfetivos = 0;

  for (var index = 0; index < jogadores.length; index++) {
    nome = jogadores[index][0];
    saques = jogadores[index][1];
    saquesEfetivos = jogadores[index][2];
    bloqueios = jogadores[index][3];
    bloqueiosEfetivos = jogadores[index][4];
    ataques = jogadores[index][5];
    ataquesEfetivos = jogadores[index][6];

    double relacaoSaques = (saquesEfetivos / saques) * 100;
    double relacaoBloqueios = (bloqueiosEfetivos / bloqueios) * 100;
    double relacaoAtaques = (ataquesEfetivos / ataques) * 100;

    
    final mensagem = "\nJogador:$nome\nSaques:$saquesEfetivos/$saques (${relacaoSaques.toStringAsFixed(1)}%)\nBloqueios:$bloqueiosEfetivos/$bloqueios (${relacaoBloqueios.toStringAsFixed(1)}%)\nAtaques:$ataquesEfetivos/$ataques (${relacaoAtaques.toStringAsFixed(1)}%)";

    print(mensagem);
  }
}
