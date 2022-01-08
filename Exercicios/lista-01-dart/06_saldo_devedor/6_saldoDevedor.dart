void main() {
  int totalParcelas = 60;
  int parcelasPagas = 18;
  double valorParcela = 566.78;

  num valorConsorcio = (totalParcelas * valorParcela);
  num saldoDevedor = (valorConsorcio - (valorParcela * parcelasPagas));
  
  print("Valor total do consorcio: ${valorConsorcio.toStringAsFixed(2)}");
  print("Saldo devedor: ${saldoDevedor.toStringAsFixed(2)}");
}
