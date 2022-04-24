import 'package:flutter/material.dart';
import 'package:patterns/atividade%202/exercicio1/view/counter_view.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Injeção de Dependências",
      home: CounterView(),
      debugShowCheckedModeBanner: false,
    );
  }
}