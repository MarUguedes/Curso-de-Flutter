import 'funcionario.dart';
class Caixa extends Funcionario {
  Caixa(
    int matricula,
    String nome,
    String sobrenome,
    double salario,
    int horasTrabalhadas,
  ) : super(
          matricula,
          nome,
          sobrenome,
          salario,
          horasTrabalhadas,
        );
}