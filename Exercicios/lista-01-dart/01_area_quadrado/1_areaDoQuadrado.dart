import 'dart:io';
import 'dart:math';

void main() {
  print("Digite o lado do quadrado para receber a área");
  final lado = double.parse(stdin.readLineSync()!);

  print("Área = ${pow(lado, 2)}");
}
