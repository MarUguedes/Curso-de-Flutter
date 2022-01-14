

void main() {
  //Variavei para dados
  String nome = "Cristiane";
  List depositos = [1, 2, 3, 4];

  //caculo do Saldo
  num saldoTotal = depositos.reduce((value, element) => value + element);
  //Media
  num mediaDepositos = saldoTotal / depositos.length;

  print(
      "$nome já tem R\$ $saldoTotal guardados!\nA média dos depositos é de R\$ $mediaDepositos por mês ");
}
