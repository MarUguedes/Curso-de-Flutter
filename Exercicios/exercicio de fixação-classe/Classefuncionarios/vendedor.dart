import 'funcionario.dart';

class Vendedor extends Funcionario {
  Vendedor(
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
    print(bonus);
    return bonus + (bonus * 0.2);
  }
}
