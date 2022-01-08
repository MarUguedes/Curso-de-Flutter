import 'dart:math';

void main() {
  for (var index = 1; index <= 200; index++) {
    
    if (index % 2 != 0) {

      print("$index * $index == ${index*index}");
    }
  }
}
