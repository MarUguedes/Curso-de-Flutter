void main() {
  final altura = 1.85;
  final sexo = "m";
  var pesoIdeal;

  if (sexo == "f"|| sexo=="F") {
    pesoIdeal = ((62.1 * altura) - 44.7);
  } else {
    pesoIdeal = (72.7 * altura) - 58;
  }
  print("Peso ideal: $pesoIdeal Kg");
}
