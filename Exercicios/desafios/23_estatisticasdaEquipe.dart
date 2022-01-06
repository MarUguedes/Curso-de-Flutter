void main() {
  final nome = "Mauricio";
  int saques = 11;
  int saquesEfetivos = 5;
  int bloqueios = 10;
  int bloqueiosEfetivos = 8;
  int ataques = 18;
  int ataquesEfetivos = 12;

  double porcentagemSaques = (saquesEfetivos / saques) * 100;
  
  double porcentagemBloqueio = (bloqueiosEfetivos / bloqueios) * 100;
  
  double porcentagemAtaque = ((ataquesEfetivos / ataques) * 100);


  print("Jogador: $nome");
  print("Saque:$saquesEfetivos/$saques (${porcentagemSaques.toStringAsFixed(1)}%)");
  print( "Bloqueio:$bloqueios/$bloqueiosEfetivos (${porcentagemBloqueio.toStringAsFixed(1)}%)"); //Aqui
  print("Ataques: $ataquesEfetivos/$ataques (${porcentagemAtaque.toStringAsFixed(1)}%)");

  
}
