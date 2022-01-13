// ignore_for_file: unused_local_variable

class Calculadora {
  //fields
  double somar(valor1, valor2) => valor1 + valor2;
  double subtrair(valor1, valor2) => valor1 - valor2;
  double dividir(valor1, valor2) => valor1 / valor2;
  double multiplicar(valor1, valor2) => valor1 * valor2;
  //getters

}

class tela {
  void mostrar(
      double valor1, String operador, double valor2, double resultado) {
    print("Resultado de $valor1 $operador $valor2: $resultado");
  }
}

void main() {
  double valor1 = 5;
  double valor2 = 5;
  String operador = "+";
  double resultado = 0;

  switch (operador) {
    case "+":
      resultado = Calculadora().somar(valor1, valor2);
      tela().mostrar(valor1, operador, valor2, resultado);;
      break;
    case "-":
      resultado = Calculadora().subtrair(valor1, valor2);
      tela().mostrar(valor1, operador, valor2, resultado);;
      break;
    case "*":
      resultado = Calculadora().multiplicar(valor1, valor2);
      tela().mostrar(valor1, operador, valor2, resultado);
      break;
    case "/":
      resultado = Calculadora().dividir(valor1, valor2);
      tela().mostrar(valor1, operador, valor2, resultado);;
      break;
  }
}
