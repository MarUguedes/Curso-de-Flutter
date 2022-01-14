import 'funcionario.dart';
class Gerente extends Funcionario {
  Gerente(
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
        
  @override
  double extras() {
    final bonus = super.extras();
    return bonus + bonus * 0.35;
  }
}