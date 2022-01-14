import 'Classefuncionarios/caixa.dart';
import 'Classefuncionarios/gerente.dart';
import 'Classefuncionarios/vendedor.dart';

void main() {
  //Dados de funcionarios
  final funcionario1 = Caixa(1579, 'Ana', 'Oliveira', 1212, 230);
  final funcionario2 = Vendedor(1601, 'João', "Silva", 1212, 230);
  final funcionario3 = Gerente(1603, "Maria", "Souza", 1212, 230);

  //Calculo de salario final com as respectivas bonificações
  funcionario1.salario = double.parse(funcionario1.extras().toStringAsFixed(2));
  funcionario2.salario = double.parse(funcionario2.extras().toStringAsFixed(2));
  funcionario3.salario = double.parse(funcionario3.extras().toStringAsFixed(2));

  //Esteira de funcionarios
  List funcionarios = [funcionario1, funcionario2, funcionario3];
  //Imprime todos os dados
  hall(funcionarios);
}

String? hall(List lista) {
  for (var index = 0; index < lista.length; index++) {
    print(
        "Matricula: ${lista[index].matricula}\nNome: ${lista[index].nome}\nHoras trabalhadas: ${lista[index].horasTrabalhadas}\nSalário: ${lista[index].salario}\n "); // falta por salario
  }
}
