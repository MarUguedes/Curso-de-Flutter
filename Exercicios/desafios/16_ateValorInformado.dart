void main() {
  final numero = 5;
  var list = [];

  for (var index = 1; index <= numero; index++) {
    list.add(index);
  }
  
  print("${list.join(', ')}.");
}
