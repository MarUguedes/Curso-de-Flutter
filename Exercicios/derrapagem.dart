import 'dart:math';

void main() {
  const velocidade = 20;
  const aceleracao = -2;
  final distanciaPercorrida = (-pow(velocidade, 2) / (2 * aceleracao));
  print("A distancia percorrida ate para é $distanciaPercorrida");
}
