void main() {
  int num = 8;
  int soma = 0;

  for (var i = 1; i <= num; i++) {
    String linha = "";
    for (var coluna = 1; coluna <= num; coluna++) {
      soma++;
      final separator = linha.isEmpty ? "" : " ";
      linha += "$soma$separator ";
    }
    print(linha);
  }
}
