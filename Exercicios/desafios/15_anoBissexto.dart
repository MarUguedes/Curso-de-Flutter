void main() {
  final ano = 1900;

  if (ano % 4 == 0) {
    if (ano % 100 != 0) {
      print("Ano Bissexto" );
    } else if( ano%400==0) {
      print("Ano Bissexto");
    }
  } else {
    print(" ");
  }
}
