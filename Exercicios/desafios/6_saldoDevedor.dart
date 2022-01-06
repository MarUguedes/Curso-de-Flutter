void main() {
  final parcelas = 60;
  var parcelasPagas = 18;
  final valorParcela = 566.78;

  final valorConsorcio = (parcelas * valorParcela);
  final saldoDevedor = (valorConsorcio - (valorParcela * parcelasPagas));
  
  print("Valor total do consorcio:${valorConsorcio.toStringAsFixed(2)}");
  print("Saldo devedor:${saldoDevedor.toStringAsFixed(2)}");
}
