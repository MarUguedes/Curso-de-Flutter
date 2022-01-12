void main() {
  int valor = 150;
  List fibonacci = fibonacciAteValor(valor);
  String imprimir = "Sequência de Fibonacci: "+ fibonacci.join(" ");
  print(imprimir);
}

fibonacciAteValor(valor) {
  var list = [];
  int t1 = 0;
  int t2 = 1;

  if (valor == 1) {
    list.add(t1);
  } else if (valor == 2) {
    list.addAll([1, 1]);
  } else {
    list.add(t2);
    while (list[list.length - 1] < valor) {
      int t3 = t1 + t2;
      list.add(t3);
      t1 = t2;
      t2 = t3;
    }
    list.removeLast();
  }
  return (list);
}
