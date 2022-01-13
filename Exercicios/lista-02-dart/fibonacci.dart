import 'dart:io';

void main() {
  print("Sequencia Fibonacci");
  print("Digite um valor ");
  int valor = int.parse(stdin.readLineSync()!);

  if (valor == 0 || valor == 1) {
    list.add(0);
  } else {
    list.add(1);
    fibonacci(valor);
  }

  imprimir();
}

//Definindo variaveis
int resultado = 0;
int a = 0;
int b = 1;
var list = [];

//Função Fibonacci
void fibonacci(valor) {
  if (resultado + a >= valor) {
    return;
  }
  resultado = a + b;
  a = b;
  b = resultado;
  list.add(resultado);
  fibonacci(valor);
}

//Função para imprimir
String? imprimir() {
  print(list.join(" "));
}
