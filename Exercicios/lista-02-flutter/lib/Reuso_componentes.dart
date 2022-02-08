import 'package:flutter/material.dart';

class MyComponentes extends StatelessWidget {
  const MyComponentes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Block(Colors.green, 100, 200),
          Block(Colors.yellow, 80, 80),
          Block(Colors.blue, 200, 300),
          Block(Colors.red, 100, 180)
        ],
      ),
    );
  }
}

class Block extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  const Block(this.color,this.height,this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }
}
