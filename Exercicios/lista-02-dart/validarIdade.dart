import 'dart:io';

void main() {
//Declarando pessoa
  List pessoa = [];
  print("Digite seu nome");
  pessoa.add(stdin.readLineSync());
  print("Digide o dia de nascimento");
  pessoa.add(int.parse(stdin.readLineSync()!));
  print("Digite o número do mês");
  pessoa.add(int.parse(stdin.readLineSync()!));
  print("Digite mês de nascimento");
  pessoa.add(int.parse(stdin.readLineSync()!));

//Definindo a idade atual que chama a função IdadeAtual para realizar o calculo
  num idade = idadeAtual(pessoa[1], pessoa[2], pessoa[3]);

//Mensagem de permissao
  String? podeDirigir = permissaoParaDirigir(idade);
  var msgFinal = "Nome: ${pessoa[0]} \nIdade: $idade\n$podeDirigir";

  print(msgFinal);
}

num idadeAtual(int dia, int mes, int ano) {
  final diaAtual = new DateTime.now().day;
  final mesAtual = new DateTime.now().month;
  final anoAtual = new DateTime.now().year;

  if (mes > mesAtual) {
    return (anoAtual - ano) - 1;
  } else if (mes == mesAtual) {
    if (dia > diaAtual) {
      return (anoAtual - ano) - 1;
    } else {
      return anoAtual - ano;
    }
  } else {
    return anoAtual - ano;
  }
}

String? permissaoParaDirigir(num idade) {
  if (idade < 18) {
    return "Não pode dirigir";
  } else {
    return "Pode dirigir!";
  }
}
