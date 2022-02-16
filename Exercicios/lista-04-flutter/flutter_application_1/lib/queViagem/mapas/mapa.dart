import 'package:flutter/material.dart';

class Mapas extends StatelessWidget {
  const Mapas({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Image.network('https://i.imgur.com/qVbQ7ho.png', fit: BoxFit.cover,)
      );
  }
}