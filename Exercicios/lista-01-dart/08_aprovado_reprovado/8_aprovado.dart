void main() {
  num nota1 = 7;
  num nota2 = 6.3;
  num nota3 = 8;
  num nota4 = 5.5;

  var media = (nota1 + nota2 + nota3 + nota4) / 4;
  final mediaArredondada = media.toStringAsFixed(1);
  media = double.parse(mediaArredondada);
  

  print("Média: $mediaArredondada");

  print(media >= 6.0 ? "Aprovado" : "Reprovado");
}
