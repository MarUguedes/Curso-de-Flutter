import 'dart:async';
import 'dart:io';

void main() {
  // Variaveis iniciais

  final inputs = readFromkeyboard(stdin.readLineSync() ?? '');

  double number1 = double.parse(inputs[0]);
  final operator = inputs[1];
  double number2 = double.parse(inputs[2]);

  //calculando
  final resultado = calculate(number1, operator, number2);

  //mensagem resultado
  final msg = formatMenssage(resultado);
  print(msg);
}

//Funcao pegar imputs
List<String> readFromkeyboard(String line) {
  if (line.isEmpty) exit(0);
  return line.split(" ");
}

//funcao calculo
double calculate(double number1, String operator, double number2) {
  switch (operator) {
    case "*":
      return number1 * number2;

    case "/":
      return number1 / number2;

    case "-":
      return number1 - number2;

    default:
      return number1 + number2;
  }
}

//Mensagem final
String formatMenssage(double resultado) {
  final resultadoInteiro = resultado ~/ 1;
  final resultadoResto = resultado % 1;
  final resultadoAproximacao = resultado.toStringAsFixed(5);

  return resultadoResto > 0
      ? double.parse(resultadoAproximacao).toString()
      : resultadoInteiro.toString();
}
