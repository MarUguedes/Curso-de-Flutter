void main() {
  var valorA = 3;
  var valorB = 5;
  var valorArmazenado = valorA;

  valorA = valorB;
  valorB = valorArmazenado;

  print("-ValorA=$valorA -ValorB=$valorB");
}
