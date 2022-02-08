import 'dart:ui';
import 'package:contador/Reuso_componentes.dart';
import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(children: [
        Image.asset('assets/bolo.jpg'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Block(Colors.green, 100, 100),
             Block(Colors.red, 100, 100),
              Block(Colors.blue, 100, 100),
          ],
        )

      ]),

    );
  }
}
