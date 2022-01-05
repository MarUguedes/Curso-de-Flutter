void main() {
  final altura = 1.65;
  final sexo = "f";
  var pesoIdeal;

  if (sexo == "f") {
    pesoIdeal = ((62.1 * altura) - 44.7);
  } else {
    pesoIdeal = (72.7 * altura) - 58;
  }
  print("Peso ideal: $pesoIdeal Kg");
}
