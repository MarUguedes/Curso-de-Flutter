// ignore_for_file: unused_local_variable

class Carro {
  //fields
  final String nome;
  final String modelo;
  final String cor;
  final double potenciaMotor;
  final String tipoCombustivel;
  //construtores
  Carro(this.nome, this.modelo, this.cor, this.potenciaMotor,
      this.tipoCombustivel);
}

void main() {
  //Criando objetos
  final car1 = Carro('Fiat', "Palio", 'branca', 1.0, 'flex');
  final car2 = Carro('Honda', 'Civic', 'cinza', 1.8, 'gasolina');
  final car3 = Carro('Hyundai', 'Tucson', 'prato', 2.4, 'gasolina');

  //Hall de veiculos
  List hall = [car1, car2, car3];

  //Contador para expor cada veiculo
  for (var index = 0; index < hall.length; index++) {
    
    print("Montadora: ${hall[index].nome}\nModelo: ${hall[index].modelo}\nCor: ${hall[index].cor}\nMotor: ${hall[index].potenciaMotor}\nCombustível: ${hall[index].tipoCombustivel}\n");
  }
}
