import 'package:flutter/material.dart';

class CoffeBar extends StatelessWidget {
  const CoffeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              leading: const Icon(Icons.coffee, color: Colors.brown, size: 50),
              title: const Text(
                'Coffe',
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: const Color.fromARGB(255, 230, 212, 140))),
    );
  }
}
