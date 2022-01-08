void main() {
  num num1 = 5;
  num num2 = 5;

  if (num1 == num2) {
    print("Valores Iguais");
  } else if (num1 > num2) {
    print("Maior valor: $num1");
    print("Menor valor: $num2");
  }else{
    print("Maior valor: $num2");
    print("Menor valor: $num1");
  }
}
