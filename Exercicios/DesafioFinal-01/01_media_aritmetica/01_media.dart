void main() {
  //Variavei para dados
  String nome = "Cristiane";
  List depositos = [1, 2, 3, 4];

  //caculo do Saldo
  double saldoTotal = depositos.reduce(value, element) => value + element;
  //Media
  double mediaDepositos =saldoTotal / depositos.length;
  ;

  print(
      "$nome já tem R\$ ${saldoTotal.toStringAsFixed(2)} guardados!\nA média dos depositos é de R\$ ${mediaDepositos.toStringAsFixed(2)} por mês ");
}
