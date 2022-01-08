void main() {
  final percentualDesconto = 23;
  double preco = 500;

  var valorDesconto = preco * percentualDesconto / 100;
  final valorPago = 500 - valorDesconto;

  print("Preço do produto: R\$${preco.toStringAsFixed(2)}");
  print(
      "Desconto de $percentualDesconto%: R\$${valorDesconto.toStringAsFixed(2)}");
  print("Preço do produto com desconto: R\$${valorPago.toStringAsFixed(2)}");
}
