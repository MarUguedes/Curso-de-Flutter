void main() {
  double altura = 1.85;
  String sexo = "m";
  double pesoIdeal;

  if (sexo == "f"|| sexo=="F") {
    pesoIdeal = ((62.1 * altura) - 44.7);
  } else {
    pesoIdeal = (72.7 * altura) - 58;
  }
  print("Peso ideal: $pesoIdeal Kg");
}
