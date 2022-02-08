import 'package:flutter/material.dart';

class Alinhamento extends StatelessWidget {
  const Alinhamento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 120,
          color: Colors.green,
        ),
        Container(
          width: 120,
          height: 120,
          color: Colors.yellow,
        ),
        Container(
          width: 120,
          height: 120,
          color: Colors.red,
        ),
      ],
    );
  }
}
