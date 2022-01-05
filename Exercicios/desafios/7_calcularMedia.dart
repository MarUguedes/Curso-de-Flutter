void main() {
  final nota1 = 7;
  final nota2 = 6.3;
  final nota3 = 8;

  final media = (nota1 + nota2 + nota3) / 3;
  final mediaArredondada = media.toStringAsFixed(1);
  print("Média: $mediaArredondada");
}
