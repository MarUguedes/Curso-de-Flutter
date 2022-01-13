import 'dart:io';

import 'soma.dart';

void main() {
  print("Digite um valor inteiro");
  int valor = int.parse(stdin.readLineSync()!);
  somaValores(valor);
  print("Todos os valores somados de 0 até $valor: $soma");
}

int cont = 0;
int soma = 0;

void somaValores(int valor) {
  soma += cont;
  cont++;

  if (cont > valor) {
    return;
  }
  somaValores(valor);
}
