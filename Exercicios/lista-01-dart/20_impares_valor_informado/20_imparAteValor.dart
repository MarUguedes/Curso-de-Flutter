void main() {
  int num = 11;
  var NumerosImpares = [];

  for (var index = 1; index <= num; index++) {
    if (index % 2 != 0) {
      NumerosImpares.add(index);
    }
  }
  
  final list2 = NumerosImpares.join(', ');
  print("$list2.");
}
