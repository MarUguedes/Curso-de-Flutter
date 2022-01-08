void main() {
  int num = 50;
  String resultado = "";

  for (var index = 1; index < num; index++) {
    if (index % 2 == 0) {
      resultado += "$index ";
    }
  }
  print(resultado);
}
