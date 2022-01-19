

String? provaReal(num numero, num limiteInferior, num limiteSuperior) {
  if (numero >= limiteInferior && numero <= limiteSuperior) {
    print("Pertence");
  } else {
    print("Não pertence");
  }
}

void main() {
  int numero = 5;
  int limiteInferior = 10;
  int limiteSuperior = 20;

  provaReal(numero, limiteInferior, limiteSuperior);
}
