void main() {
//resolva a segunda e penultima
  final initialList = List.unmodifiable([0, 3, 4, 5, 6, 7, 8, 9, 10] );
  final workList = List<int>.from(initialList);

//Maior que 5
  if (workList.length > 5) {
    // Primeiro = 0 e ultimo =10
    if (workList.first == 0 && workList.last == 10) {
      workList.removeRange(1, workList.length - 4);
    }
    //Caso a primeira posição não seja 0 e a última não seja 10, mas a quarta posição tem o valor de 3
    //
    else if (workList[3] == 3) {
      //Substituir a primeira posição por 1 e a última por 9
      workList.first = 1;
      workList.last = 9;

      //Remover determinados itens até que a lista tenha 5 itens, onde a penúltima posição será a última a ser excluída
      final end = workList.length - 1;
      final start = end -( workList.length - 5);

      workList.removeRange(start,end);
    } else {
      workList.remove(workList.last);
      if (workList.length > 5) {
        workList.remove(workList.first);
      }
      if (workList.length > 5) {
        workList.removeRange(
            0, workList.length - 5); //como isso resolveu? era list.length-4
      }
    }
    //Se tiver menos que 5
  } else if (workList.length <= 5) {
    
      //Adicionar o número 2 no final até completar 5 itens, se possível
      final tempList=List.filled(5-workList.length, 2);
      workList.addAll(tempList);
      workList[1] = 8;
      
    }
    final result1 = workList[1] + workList[2];
    final result2 = workList[4] / workList[2];
      if (result1 * result2 > 15) {
        print("Lista Valida");
      } else {
         print("Lista Invalida");
      }
    print(workList);
    
  }
 

