import 'package:flutter/material.dart';
import 'package:flutter_application_1/dark%20mode/darkMode.dart';
import 'package:flutter_application_1/lista%20infinita/listaInfinita.dart';
import 'package:flutter_application_1/rainbow/ranbow.dart';
import 'package:flutter_application_1/reserva/reserva.dart';
import 'package:flutter_application_1/sign%20Up/signUp.dart';
import 'grades grids/grade.dart';

void main() {
  //runApp( Lista());
  // runApp(GradesGrids());
  //runApp(Rainbow());
  //runApp(DarkMode());
  runApp(const myapp());
  
  //runApp(Hostel());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
