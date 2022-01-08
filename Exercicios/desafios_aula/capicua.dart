void main() {
  int num = 943645;

  final digito1 = num ~/ 10000;
  final digito2 = ((num % 10000) ~/ 1000);
  final digito3 = ((num % 10000) % 1000) ~/ 100;
  final digito4 = (((num % 10000) % 1000) % 100) ~/ 10;
  final digito5 = ((((num % 10000) % 1000) % 100) % 10) ~/ 1;

  print('$digito1$digito2$digito3$digito4$digito5');

  final sentenca1 = digito1 == digito5;
  final sentenca2 = digito2 == digito4;

  final capicua = sentenca2 && sentenca1;
  print(capicua ? "É capicua" : " Não é capicua");

  if (!sentenca1) {
    print("o primeiro digito tem que ser igual ao ultimo");
  } 
  if (!sentenca2) {
    print("o segundo digito tem que ser igual ao quarto");
  } 

/* forma que o prof fez abaixo

   int num = 96369 ;

  final digito1 = num ~/ 10000;
   num = num %= 10000;
  final digito2 = num ~/ 1000);
  num = num %= 1000;
  final digito3 = num ~/ 100;
  num = num %= 100;
  final digito4 = num ~/ 10;
  final digito5 = num % 10;

  final firstPart= digito1==digito5;
  final secondPart= digito4==digito2;
  final capicua = firstPart&&secondPart;
  print(capicua?? "E capicua":"Nao e capicua");

*/
}
