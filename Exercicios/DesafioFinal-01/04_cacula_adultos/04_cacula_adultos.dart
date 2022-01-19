
void main() {
  List idades = [15, 21, 27, 17, 18];
  var maiorIdade=[];
  idades.sort();
  
    for (var i=0;i<idades.length;i++){
      if (idades[i]>=18){
        maiorIdade.add(idades[i]);
      }
    }
  
  print(maiorIdade.isEmpty?"Creça e apareça":"${maiorIdade[0]}");
}
