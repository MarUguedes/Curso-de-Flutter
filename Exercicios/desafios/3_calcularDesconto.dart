void main() {
  final preco = 2500;
  var desconto = (preco * 0.1);
  final valorPago = preco - desconto;

  print("Preço do produto: R\$${preco.toStringAsFixed(2)}");
  print("Desconto de 10%: R\$${desconto.toStringAsFixed(2)}");
  print("Preço do produto com desconto: R\$${valorPago.toStringAsFixed(2)}");
}
