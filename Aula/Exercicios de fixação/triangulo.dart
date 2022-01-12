void main() {
  var ladoA = 5;
  var ladoB = 12;
  var ladoC = 13;

  if ((ladoC + ladoB > ladoA) ||
      (ladoA + ladoB > ladoC) ||
      (ladoA + ladoC > ladoB)) {
    print("É um triangulo");

    if ((ladoC == ladoA) && (ladoA == ladoB)) {
      print("Equilatero");
    } else if (ladoC == ladoB || ladoB == ladoA || ladoA == ladoC) {
      print("Isoceles");
    } else if ((ladoC != ladoA) && (ladoC != ladoB) && (ladoB != ladoA)) {
      print("Escaleno");
    }
    
    if((ladoB*ladoB)+(ladoA*ladoA)==(ladoC*ladoC)){
      print("Retangulo");
    }


  } else {
    print("Não é um triangulo");
  }
}
