void main() {
  var list = [3, 5, 10, 2, 5, 1, 2, 3, 6, 12, 15, 22, 8, 4, 13, 25];
  int maior = list[0];
  int menor = list[0];
  int soma = 0;
  int qtdPar = 0;
  int qtdImpar = 0;

  for (final element in list) {
    soma += element;
    if (element > maior) {
      maior = element;
    }
    if (element < menor) {
      menor = element;
    }

    if (element % 2 == 0) {
      qtdPar++;
    } else {
      qtdImpar++;
    }
  }
  final media = soma / list.length;

  print(
      "Maior:$maior, Menor:$menor, Media:$media, Pares:$qtdPar, Impares:$qtdImpar");

  /* Forma simplificada

  list.sort();    ordena em ordem crescente
  final menor= list.first;
  final maior= list.last;
  final media= list.reduce((value,element)=> value+element)/ list.length;
  final par= list.where((element)=>element%2==0 ).length;
  final impar= list.lenght- par;
  
  print(
      "Maior:$maior, Menor:$menor, Media:$media, Pares:$qtdPar, Impares:$qtdImpar");
  
   */
}
