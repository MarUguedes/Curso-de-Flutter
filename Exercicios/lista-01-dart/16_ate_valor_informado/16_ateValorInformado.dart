void main() {
  num valor = 5;
  var list = [];

  for (var index = 1; index <= valor; index++) {
    list.add(index);
  }
  
  print("${list.join(', ')}.");
}
