void main() {
  final valorEmprestimo = 5000;
  final serasaScore = 80;
  final meses = 10;

  double juros = 0;
  if (serasaScore < 300) {
    juros = 0.03;
  } else if (serasaScore < 700) {
    juros = 0.09;
  } else {
     juros = 0.15;
  }

  final parcela = (valorEmprestimo + (valorEmprestimo*juros)) / meses;
  print(parcela);
}
