void main() {
  var value = 389;
  var qtd2 = 0;
  var qtd5 = 0;
  var qtd10 = 0;
  var qtd20 = 0;
  var qtd50 = 0;
  var qtd100 = 0;

  if (value % 5 == 1 || value % 5 == 3) {
    value -= 5;
    qtd5++;
  }

  qtd100 = value ~/ 100;
  value = value % 100;

  qtd50 = value ~/ 50;
  value = value % 50;

  qtd20 = value ~/ 20;
  value = value % 20;

  qtd10 = value ~/ 10;
  value = value % 10;

  var cincoTemp = value ~/ 5;

  if (cincoTemp > 0) {
    qtd5 += cincoTemp;
    value = value % 5;
  }

  if (value % 2 != 0) {
    qtd5--;
    value = value + 5;
    qtd2 = value ~/ 2;
  }

  qtd2 = value ~/ 2;
  value = value % 2;

  String msg = "";
  var separator = "";

  if (qtd100 > 0) {
    msg += "$separator$qtd100 de 100";
  }
  if (qtd50 > 0) {
    separator = msg.isEmpty ? " " : ", ";
    msg += "$separator$qtd50 de 50";
  }
  if (qtd20 > 0) {
    separator = msg.isEmpty ? " " : ", ";
    msg += "$separator$qtd20 de 20";
  }
  if (qtd10 > 0) {
    separator = msg.isEmpty ? " " : ", ";
    msg += "$separator$qtd10 de 10";
  }

  if (qtd5 > 0) {
    separator = msg.isEmpty ? " " : ", ";
    msg += "$separator$qtd5 de 5";
  }

  if (qtd2 > 0) {
    separator = msg.isEmpty ? " " : ", ";
    msg += "$separator$qtd2 de 2";
  }

  print(msg);
}
