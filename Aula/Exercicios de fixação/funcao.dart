void main() {
  //invocação
  studentAvarage("Marcela", 20, [8, 9, 9]);
  studentAvarage2(age: 14, grades: [5, 8, 5, 6]);
  studentAvarage3();
  studentAvarage4(8, [8, 8, 8, 6]);
}

//Funçoes com parametros obrigatorios
void studentAvarage(String name, int age, List<int> grades) {
  final avg =
      grades.reduce((value, element) => value + element) / grades.length;
  print("O aluno $name de $age anos teve média $avg");
}

//Funçao de parametros nomeaveis(parametros opcionais)
//Pode colocar uma interrogação depois do tipo ou atribuir um valor padrao que so vai ser utilizado se nao passar o parametro
void studentAvarage2(
    {String name = 'Nao identificado',
    required int age,
    required List<int> grades}) {
  final avg =
      grades.reduce((value, element) => value + element) / grades.length;
  print("O aluno $name de $age anos teve média $avg");
}


//funcao de parametros opcionais
//mesma coisa do de cima so troca chaves por colchetes
void studentAvarage3(
    [String name = 'Nao identificado', int? age, List<int>? grades]) {
  // final avg =  grades.reduce((value, element) => value + element) / grades.length; pois a media nao uncionaria
  print("O aluno $name de $age anos teve média ");
}



//De parametros mistos
//pode usar o required ou por os obrigatorios em primeiro fora das chaves
void studentAvarage4(int age, List<int> grades,
    {String name = 'Nao identificado'}) {
  final avg =
      grades.reduce((value, element) => value + element) / grades.length;
  print("O aluno $name de $age anos teve média $avg");
}
