import 'dart:math';

void main() {
  for (var index = 1; index <= 200; index++) {
    
    if (index % 2 != 0) {
      var quadradoDoNumero = pow(index, 2);

      print("$index * $index == $quadradoDoNumero");
    }
  }
}
