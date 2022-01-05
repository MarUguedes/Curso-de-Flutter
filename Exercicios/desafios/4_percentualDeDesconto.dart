void main() {
  final desconto = 23;
  final preco = 500;
  final valorPago = 500 - (preco * desconto / 100);

  print("Preço do produto: $preco");
  print("Desconto:$desconto%");
  print("Preço do produto com desconto:$valorPago");
}
