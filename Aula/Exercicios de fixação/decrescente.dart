void main() {
  // Variaveis iniciais
  final int num1 = 5;
  final int num2 = 3;
  final int num3 = 9;

  // Escreva seu programa a partir daqui

  if (num1 == num2 || num2 == num3 || num3 == num1) {
    print("Entre apenas numeros diferentes");
  } else {
    if (num1 > num2 && num1 > num3 && num2 > num3) {
      print('$num1 $num2 $num3');
    } else if (num1 > num2 && num1 > num3 && num3 > num2) {
      print('$num1 $num3 $num2');
    } else if (num2 > num1 && num2 > num3 && num1 > num3) {
      print('$num2 $num1 $num3');
    } else if (num2 > num1 && num2 > num3 && num3 > num1) {
      print('$num2 $num3 $num1');
    } else if (num3 > num2 && num3 > num1 && num1 > num2) {
      print('$num3 $num1 $num2');
    } else {
      print('$num3 $num2 $num1');
    }
  }
}
