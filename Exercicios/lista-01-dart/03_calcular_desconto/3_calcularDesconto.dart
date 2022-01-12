import 'dart:io';

void main() {
  print("Digite o preço do produto");
  double preco = double.parse(stdin.readLineSync()!);
  var desconto = (preco * 0.1);
  double valorPago = preco - desconto;

  print("Preço do produto: R\$${preco.toStringAsFixed(2)}");
  print("Desconto de 10%: R\$${desconto.toStringAsFixed(2)}");
  print("Preço do produto com desconto: R\$${valorPago.toStringAsFixed(2)}");
}
