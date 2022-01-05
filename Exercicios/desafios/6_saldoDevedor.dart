void main() {
  final parcelas = 60;
  var parcelasPagas = 18;
  final valorParcela = 566.78;

  final valorConsorcio = (parcelas * valorParcela);
  final saldoDevedor = (valorConsorcio - (valorParcela * parcelasPagas));
  final valorConsorcioArredondado = valorConsorcio.toStringAsFixed(2);
  final saldoDevedorArredondado = saldoDevedor.toStringAsFixed(2);

  print("Valor total do consorcio:$valorConsorcioArredondado");
  print("Saldo devedor:$saldoDevedorArredondado");
}
