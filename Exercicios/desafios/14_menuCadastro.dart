void main() {
  final insert = "D";
  
  if (insert == "c" || insert == "C") {
    print("Cadastrar/Inserir");
  } else if (insert == "r" || insert == "R") {
    print("Buscar/Ler");
  } else if (insert == "u" || insert == "U") {
    print("Editar/Atualizar");
  } else if (insert == "d" || insert == "D") {
    print("Excluir/Apagar");
  } else {
    print("Opção invalida");
  }
}
