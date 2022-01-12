void main() {
  var n = 8;
  var sum = 0;

  for (var i = 1; i <= n; i++) {
    String line = "";
    for (var j = 1; j <= i; j++) {
      sum++;
      final separator = line.isEmpty ? "" : " ";
      line += "$separator$sum";
    }
    print(line);
  }

  //mostrando o inverso
/*
  final lines = List<String>.empty(growable: true);

  for (int i2 = 1; i2 <= n; i2++) {
    String line2 = "";
    for (int j2 = 1; j2 <= i2; j2++) {
      sum++;
      final separator = line.isEmpty ? "" : " ";
      line += "$separator$sum";
    }
    lines.add(line);
  }
  lines.reversed.forEach(print);*/
}
