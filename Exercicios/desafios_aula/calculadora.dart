void main() {
  // Variaveis iniciais
   double number1 = 1;
  final operador = "/";
  double number2 = 7;

  // Escreva seu programa a partir daqui
  double resultado;

  switch (operador) {
    case "*":
      resultado = number1 * number2;
      break;

    case "/":
      resultado = number1 / number2;
      break;

    case "-":
      resultado = number1 - number2;
      break;

    default:
      resultado = number1 + number2;
      break;
  }
  ;
  final resultadoInteiro = resultado ~/ 1;
  final resultadoResto = resultado % 1;
  final resultadoAproximacao = resultado.toStringAsFixed(5);

  if (resultadoResto > 0) {
    print(double.parse(resultadoAproximacao));
  } else{
    print(resultadoInteiro);
    }
}
