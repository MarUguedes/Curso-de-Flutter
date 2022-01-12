void main() {
  /*
  var minutos = 1780;
  var tempDias = minutos ~/ 1440;
  minutos = minutos % 1440;

  if (tempDias != 0) {
    print('Dias:$tempDias');
  }

  var tempHoras = minutos ~/ 60;
  minutos = (minutos % 60);

  if (tempHoras != 0) {
    print('Horas: $tempHoras');
  }

  print('Minutos:$minutos'); */

  //do professor

  double time = 225;
  const daysToMinutes = 1440;
  const hourToMinutes = 60;
  const minutesToSecond = 60;

  int days = 0;
  if (time >= daysToMinutes) {
    days = time ~/ daysToMinutes;
    time %= daysToMinutes;
  }

  int hours = 0;
  if (time >= 60) {
    hours = time ~/ 60;
    time %= hourToMinutes;
  }

  final minutesDecimal = time;
  final minutes = minutesDecimal ~/ 1;
  final secondDecimal = minutesDecimal % 1;
  final second = (secondDecimal * minutesToSecond)~/1;

  String msg = "";

  if (days > 0) {
    final dayComplement = days == 1 ? "dia," : "dias,";
    msg +=
        "$days $dayComplement "; //uma forma de colocar no plural com ternario
  }
  if (hours > 0) {
    msg += "$hours ${hours == 1 ? "hora, " : "horas, "}"; //outra forma
  }
  msg += "$minutes ${minutes == 1 ? "minuto e " : "minutos e"} ";
  msg += "$second ${second == 1 ? "segundo, " : "segundos"} ";
  

  print(msg);
}
