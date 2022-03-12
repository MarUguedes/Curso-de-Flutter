import 'package:flutter/material.dart';

class TryCatch extends StatefulWidget {
  const TryCatch({Key? key}) : super(key: key);

  @override
  State<TryCatch> createState() => _TryCatchState();
}

class _TryCatchState extends State<TryCatch> {
  String firstValue = '';
  String secondValue = '';
  var result;

  void soma() {
    setState(() {
      result = (double.parse(firstValue)) + (double.parse(secondValue));
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
                  onChanged: (value) => firstValue = (value),
                ),
                TextField(
                  onChanged: (value) => secondValue = value,
                ),
                ElevatedButton(
                  onPressed: somar,
                  child: const Text('Calcular'),
                ),
              ],
            )));
  }

  void somar() {
    try {
      soma();
    } catch (error) {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text('Erro apenas números'),
            );
          });
    }
  }
}
