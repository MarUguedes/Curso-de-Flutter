import 'dart:math';

void main() {
  var peso = 67;
  var altura = 1.74;
  var imc = peso / pow(altura, 2);

  if (imc < 18.5) {
    print("Abaixo do peso");
  } else if (imc < 25) {
    print("Peso normal");
  } else if (imc < 30) {
    print("Acima do peso");
  } else {
    print("Obesidada");
  }
}
