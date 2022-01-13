import 'dart:html';

class Funcionario {
  final int matricula;
  final String nome;
  final String sobrenome;
  final double salario;
  final double horasTrabalhadas;

  double horasExtras(double horasTrabalhadas) {
    return horasTrabalhadas - 220;
  }

  Funcionario(this.matricula, this.nome, this.sobrenome, this.salario,
      this.horasTrabalhadas);
}

class Caixa extends Funcionario {
  Caixa(int matricula, String nome, String sobrenome, double salario,
      double horasTrabalhadas)
      : super(matricula, nome, sobrenome, salario, horasTrabalhadas);
}

class Vendedor extends Funcionario {
  Vendedor(int matricula, String nome, String sobrenome, double salario,
      double horasTrabalhadas)
      : super(matricula, nome, sobrenome, salario, horasTrabalhadas);

  @override
  double? bonificacao() {
    var bonus = horasExtras(horasTrabalhadas) * 0.2;
  }
}

class Gerente extends Funcionario {
  Gerente(int matricula, String nome, String sobrenome, double salario,
      double horasTrabalhadas)
      : super(matricula, nome, sobrenome, salario, horasTrabalhadas);
}

void main(){
  
}