import 'dart:async';
import 'dart:io';

//extencao. ai dentro da extensao a gente pode criar varias funcoes
extension calculadora on double {
  double plus(double other) {
    return this + other;
  } //funcao soma

  double minus(double other) {
    return this - other;
  } //funcao subtracao pode usar o => tbm

  double time(double other) => this * other;
  //funcao multiplica

  double dividedBy(double other) {
    return this / other;
  }

  int integerPart() => this ~/ 1;
  double decimalPart()=> this %1 ;
}

//exemplo de implementacao na calculadora

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
      return number1.time(number2);

    case "/":
      return number1.dividedBy(number2);

    case "-":
      return number1.minus(number2);

    default:
      return number1.plus(number2);
  }
}

//Mensagem final
String formatMenssage(double resultado) {
  final resultadoInteiro = resultado.integerPart();
  final resultadoResto = resultado.decimalPart();
  final resultadoAproximacao = resultado.toStringAsFixed(5);

  return resultadoResto > 0
      ? double.parse(resultadoAproximacao).toString()
      : resultadoInteiro.toString();
}
