import 'soma.dart';

void main() {
  //valor informado
  int valor = 23;

  //listagem dos valores  ate o numero informado
  List listaDeValores = listagemValores(valor);

  //soma dos valores ate o numro informado
  int soma = somaValores(listaDeValores);

  //imprime resultado
  mostrarResultado(valor, soma);
}

listagemValores(int value) {
  List valores = [];
  for (var index = 0; index <= value; index++) {
    valores.add(index);
  }
  return valores;
}

somaValores(List valores) {
  return valores.reduce((value, element) => value + element);
}

String? mostrarResultado(int valor, int soma) {
  print("Todos os valores somados de 0 até $valor: $soma");
}
