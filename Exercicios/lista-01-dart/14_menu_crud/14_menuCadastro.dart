void main() {
  String insert = "D";

  switch (insert) {
    case "c":
    case "C":
      print("Cadastrar/Inserir");
      break;

    case "r":
    case "R":
      print("Buscar/Ler");
      break;

    case "u":
    case "U":
      print("Editar/Atualizar");
      break;

    case "d":
    case "D":
      print("Excluir/Apagar");
      break;

    default:
      print("Escolha uma opção");
  }
}
