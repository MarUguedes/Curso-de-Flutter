void main() {
  final desconto = 23;
  double preco = 500;

  var abatimento = preco * desconto / 100;
  final valorPago = 500 - abatimento;

  print("Preço do produto: R\$$preco");
  print("Desconto de $desconto%: R\$$abatimento");
  print("Preço do produto com desconto: R\$$valorPago");
}
