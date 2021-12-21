import 'dart:math';

void main() {
  final a = 1;
  final b = -5;
  final c = 6;
// para elevar ao quadrado , com o import é possivel: pow(b,2)
  final delta = (b * b) - (4 * a * c);

  final r1 = (-b + sqrt(delta)) / (2 * a);
  final r2 = (-b - sqrt(delta)) / (2 * a);

  print('r1=$r1, r2= $r2');
}
