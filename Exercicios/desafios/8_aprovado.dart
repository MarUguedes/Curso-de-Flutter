void main() {
  final nota1 = 7;
  final nota2 = 6.3;
  final nota3 = 5;
  final nota4 = 5.5;

  var media = (nota1 + nota2 + nota3 + nota4) / 4;
  final mediaArredondada = media.toStringAsFixed(1);
  media = double.parse(mediaArredondada);
  

  print("Média: $mediaArredondada");

  print(media >= 6.0 ? "Aprovado" : "Reprovado");
}
