void main() {
  final preco = 2500;
  var desconto = (preco * 0.1);
  final valorPago = preco - desconto;
  final descontoArredondado = desconto.toStringAsFixed(2);


  print("Preço do produto: $preco");
  print("Desconto:$descontoArredondado");
  print("Preço do produto com desconto:$valorPago");
}
