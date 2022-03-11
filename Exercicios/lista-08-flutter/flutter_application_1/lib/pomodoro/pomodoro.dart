import 'dart:async';

import 'package:flutter/material.dart';

class Pomodoro extends StatefulWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

enum Estados { running, off, rest }

class _PomodoroState extends State<Pomodoro> {
  bool timeRunning = false;
  var tempInicial = 5;
  var temporizador;
  var progresso;
  var task = 'Adicionar Tarefa +';

  var estado = Estados.off;

  void timer() async {
    setState(() {
      timeRunning = true;
      temporizador = tempInicial;
      estado = Estados.running;
    });

    while (temporizador > 0) {
      setTime();
      await Future.delayed(const Duration(seconds: 1));
    }
    setState(() {
      timeRunning = false;
      estado = Estados.rest;
      temporizador = 15;
    });
    showDialog(
        context: context,
        builder: (_) {
          return const AlertDialog(
            content: Text('Descanse'),
          );
        });
  }

  void setTime() {
    setState(() {
      temporizador--;
      progresso = ((temporizador * 100) / tempInicial) / 100;
    });
  }

  String status() {
    if (estado == Estados.running) {
      return '00:${temporizador >= 10 ? temporizador : '0$temporizador'}';
    }
    if (estado == Estados.rest) {
      return 'Descanse';
    }
    return 'Pomodoro Task';
  }

  Color? setCor() {
    if (estado == Estados.rest) {
      return Colors.blue;
    }
    if (estado == Estados.running) {
      return Colors.pink;
    }

    return Colors.grey[700];
  }

  void setTask(String value) {
    setState(() {
      task = value;
    });
  }
  String setButton(){
     
    if (estado == Estados.rest) {
      return 'Iniciar descanso';
    }
    return 'Começar';

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: (() {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        content:
                            TextField(onChanged: ((value) => setTask(value))),
                        actions: [
                          ElevatedButton(
                              onPressed: Navigator.of(context).pop,
                              child: const Text('Adicionar')),
                          ElevatedButton(
                            child: const Text('Cancelar'),
                            onPressed: Navigator.of(context).pop,
                          )
                        ],
                      );
                    });
              }),
              child: Text(task),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 100, 100, 100))),
            ),
            const SizedBox(
              height: 100,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 210,
                  width: 210,
                  child: CircularProgressIndicator(
                      value: timeRunning ? progresso : 1,
                      strokeWidth: 20,
                      color: setCor()),
                ),
                Text(
                  status(),
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: timer,
              child: const Text(
                'Iniciar Pomodoro',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink)),
            )
          ],
        ),
      ),
    );
  }
}
