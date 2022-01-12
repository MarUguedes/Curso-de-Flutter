void main() {
  double num1 = 5.3;
  double num2 = 4.25;
  String operador = "adição";
  double resultado = 0;
  String msgErro = "";
  String simboloDaOperacao = "";

  switch (operador) {
    case "adição":
      resultado = soma(num1, num2);
      simboloDaOperacao = "+";
      break;
    case "subtração":
      resultado = subtracao(num1, num2);
      simboloDaOperacao = "-";
      break;
    case "multiplicação":
      resultado = multiplicacao(num1, num2);
      simboloDaOperacao = "*";
      break;
    case "divisão":
      resultado = divisao(num1, num2);
      simboloDaOperacao = "/";
      break;
    default:
      msgErro = "Opção invalida";
  }
  print(msgErro.isEmpty
      ? mostrarResultado(num1, simboloDaOperacao, num2, resultado)
      : msgErro);
}

double soma(double num1, double num2) {
  return num1 + num2;
}

double subtracao(double num1, double num2) {
  return num1 - num2;
}

double multiplicacao(double num1, double num2) {
  return num1 * num2;
}

double divisao(double num1, double num2) {
  return num1 / num2;
}

String mostrarResultado(num1, operador, num2, resultado) {
  return "Resultado de $num1 $operador $num2: $resultado";
}
