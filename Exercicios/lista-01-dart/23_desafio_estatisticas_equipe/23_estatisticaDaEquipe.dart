void main() {
  List jogadores = [
    ['Mauricio', 8, 4, 18, 12, 2, 1],
    ['Marcelo', 15, 10, 8, 5, 21, 10],
    ['Tande', 11, 6, 14, 12, 15, 11],
    ['Giovane', 11, 5, 10, 8, 18, 12],
    ['Paulo', 9, 2, 15, 12, 15, 10],
    ['Carlos', 10, 3, 10, 3, 12, 8]
  ];

//Para estatiscas do grupo
  int somaBloqueios = 0;
  int somaBloqueiosEfetivos = 0;
  int somaSaques = 0;
  int somaSaquesEfetivos = 0;
  int somaAtaques = 0;
  int somaAtaquesefetivos = 0;

  for (var index = 0; index < jogadores.length; index++) {
    // Coleta de dados individuais
    String nome = jogadores[index][0];
    int saques = jogadores[index][1];
    int saquesEfetivos = jogadores[index][2];
    int bloqueios = jogadores[index][3];
    int bloqueiosEfetivos = jogadores[index][4];
    int ataques = jogadores[index][5];
    int ataquesEfetivos = jogadores[index][6];

    //Soma de todos os dados(equipe)
    somaAtaques += ataques;
    somaAtaquesefetivos += ataquesEfetivos;
    somaBloqueios += bloqueiosEfetivos;
    somaSaques += saques;
    somaSaquesEfetivos += saquesEfetivos;

    //Relaçao acerto/total individual
    double relacaoSaques = (saquesEfetivos / saques) * 100;
    double relacaoBloqueios = (bloqueiosEfetivos / bloqueios) * 100;
    double relacaoAtaques = (ataquesEfetivos / ataques) * 100;

  //Mensagem para cada jogador

    print("Jogador: $nome");
    print("Saques: $saquesEfetivos/$saques (${(saquesEfetivos / saques * 100).toStringAsFixed(1)}%)");
    print("Bloqueios: $bloqueiosEfetivos/$bloqueios (${(bloqueiosEfetivos / bloqueios * 100).toStringAsFixed(1)}%)");
    print("Ataques: $ataquesEfetivos/$ataques (${(ataquesEfetivos / ataques * 100).toStringAsFixed(1)}%)");
  }

  //Relaçao acerto/total da equipe
  double relacaoSaqueEquipe = (somaSaquesEfetivos / somaAtaques) * 100;
  double relacaoBloqueiosEquipe = (somaBloqueiosEfetivos / somaBloqueios) * 100;
  double relacaoAtaquesEquipe = (somaAtaquesefetivos / somaAtaques) * 100;

  //Mensagem desempenho total da equipe
  final mensageEquipe =
      "\nResultado(equipe)\nPontos de saques:$somaSaquesEfetivos/$somaSaques (${relacaoSaqueEquipe.toStringAsFixed(1)}%)";
  print(mensageEquipe);
}
