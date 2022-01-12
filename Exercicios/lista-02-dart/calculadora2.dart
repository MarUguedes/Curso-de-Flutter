void main() {
//variaveis input
  double num1 = 5;
  double num2 = 4;
  String operador = "multiplicaçã";

  //Chamando Função que guarda 4 funções com as respectivas operações
  calculadora(operador, num1, num2);

  //verificando erro e mostrando resultado
  msgErro.isEmpty
      ? mostrarResultado(num1, operador, num2, resultado)
      : print(msgErro);
}

//variaveis globais para guardar erro, resultado, simbolo da operação
num resultado = 0;
String msgErro = "";
String simboloDaOperacao = "";

//funçao global para operaçoes
String? calculadora(String operador, double num1, double num2) {
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
      msgErro = "Opção invalida - Digite a operação corretamente.";
  }
}

//funçoes para cada tipo de operação
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

// função para imprimir
String? mostrarResultado(num1, operador, num2, resultado) {
  print("Resultado de $num1 $operador $num2: $resultado");
}
