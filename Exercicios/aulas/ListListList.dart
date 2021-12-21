void main() {
  final listA = List.empty(growable: true);
  print(listA);
  final listB = List.filled(4, 2.2);
  print(listB);
  final listC = List.unmodifiable(listB);

  final listD = [...listC, 2, 3];
  print(listD);

  final listE = listA + listC;
  print(listE);

  final listF = [if (listE.length == 4) 2.2, 5, 10];
  print(listF);

  print(listE == listB);

  listD.removeRange(0, listD.length);
  print(listD);

  print(listF.first == listC.last);

  final listG = listF;
  listF.add(5);

  print(listF);
  print(listG);
}
