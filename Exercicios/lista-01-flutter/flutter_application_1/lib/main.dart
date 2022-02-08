import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Exercicio 1 clocar my app dentro do runApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Card(
        // Exercicio 2 mudar cor de fundo
        color: Colors.pinkAccent,

        child: Center(
          child: Text(
            "Ok",

            style: TextStyle(
                fontSize: 32, // Exercicio 3 cor da fonte
                color: Colors.white), // exercicio 4 tamnho da fonte
          ),
        ),
      ),
    );
  }
}


//Exercicio 5 linear gradiente
class Gradiente extends StatelessWidget {
  const Gradiente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLUTTER',
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [Colors.purple, Colors.pinkAccent],
              ),
            ),
            child: const Center(
              child: Text(
                'Flutter',
                style: TextStyle(color: Colors.white, fontSize: 55),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
