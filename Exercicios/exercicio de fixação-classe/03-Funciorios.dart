import 'funcionarios/caixa.dart';
import 'funcionarios/funcionario.dart';
import 'funcionarios/gerente.dart';
import 'funcionarios/vendedor.dart';

void main() {
  final funcionario1 = Caixa(1579, 'Ana', 'Oliveira', 1212, 230);
  final funcionario2 = Vendedor(1601, 'João', "Silva", 1212, 230);
  final Funcionario3 = Gerente(1603, "Maria", "Souza", 1212, 230);

  final salario1 = funcionario1.extras().toStringAsFixed(2);
  final salario2 = funcionario2.extras().toStringAsFixed(2);
  final salario3 = Funcionario3.extras().toStringAsFixed(2);;
  List funcionarios = [funcionario1, funcionario2, Funcionario3];

  print(salario2);
  print(salario3);

  //Imprime na tela funcionarios e respectivos salarios
  hall(funcionarios);
}

String? hall(List lista) {
  for (var index = 0; index < lista.length; index++) {
    print(
        "Matricula: ${lista[index].matricula}\nNome: ${lista[index].nome}\nHoras trabalhadas: ${lista[index].horasTrabalhadas}\nSalário: ");// falta por salario
  }
}
