class Funcionario {
  int matricula;
  String nome;
  String sobrenome;
  double salario;
  int horasTrabalhadas;

  double extras() {
    final horasExtras = horasTrabalhadas - 220;
    final valorHora = salario / 220;
    final valorHoraExta = valorHora + valorHora / 2;
    final totalHoraExtra = valorHoraExta * horasExtras;
    return salario + totalHoraExtra;
  }

  Funcionario(
    this.matricula,
    this.nome,
    this.sobrenome,
    this.salario,
    this.horasTrabalhadas,
  );
}


