import 'dart:io';

num num1 = 0;
num num2 = 0;
void main() {
  print("Digite o primeiro valor que deseja somar");
  num1 = double.parse(stdin.readLineSync()!);
  print("Digite o segundo valor");
  num2= double.parse(stdin.readLineSync()!);
  soma();
}

void soma() {
  final resultado = num1 + num2;
  print(resultado);
}
