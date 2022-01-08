void main() {
  int ano = 1996;

  if (ano % 4 == 0) {
    if (ano % 100 != 0 || ano % 400 == 0) {
      print("Ano bissexto");
    }
  }
}
