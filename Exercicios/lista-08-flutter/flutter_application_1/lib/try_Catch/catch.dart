import 'package:flutter/material.dart';

class TryCatch extends StatefulWidget {
  const TryCatch({Key? key}) : super(key: key);

  @override
  State<TryCatch> createState() => _TryCatchState();
}

class _TryCatchState extends State<TryCatch> {
  var firstValue;
  var secondValue;
  var result;
  void soma() {
    setState(() {
      result = firstValue + secondValue;
      print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('TryCatch'),
            ),
            body: Column(
              children: [
                TextField(
                  onChanged: (value) => firstValue = value,
                ),
                TextField(
                  onChanged: (value) => secondValue = value,
                ),
                ElevatedButton(
                  onPressed: soma,
                  child: const Text('Calcular'),
                ),
              ],
            )));
  }
}
