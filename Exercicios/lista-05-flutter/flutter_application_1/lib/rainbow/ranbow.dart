import 'package:flutter/material.dart';

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'VLAVAAV Horizontal',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 241, 89, 140),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [getRainbow(), getRainbow(), getRainbow()],
        ),
      ),
    );
  }
}

getRainbow() {
  return Row(
    children: [
      getArcoiris(Colors.red, 'Vermelho'),
      getArcoiris(Colors.orange, 'Laranja'),
      getArcoiris(Colors.yellow, 'Amarelo'),
      getArcoiris(Colors.green, 'Verde'),
      getArcoiris(Colors.blue, 'Azul'),
      getArcoiris(Colors.purple, 'Violeta'),
    ],
  );
}

getArcoiris(Color color, String nomeDaCor) {
  return Container(
    width: 80,
    child: RotatedBox(
      quarterTurns: 15,
      child: Center(
        child: Text(
          nomeDaCor,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    ),
    color: color,
  );
}
