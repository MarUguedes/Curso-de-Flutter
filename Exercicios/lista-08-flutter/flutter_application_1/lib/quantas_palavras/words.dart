import 'dart:async';

import 'package:flutter/material.dart';

class Words extends StatefulWidget {
  const Words({Key? key}) : super(key: key);

  @override
  State<Words> createState() => _WordsState();
}

class _WordsState extends State<Words> {
  List<String> words = ['banana', 'leite', 'ovo'];
  var text = '';
  var gameRunning = false;
  var timer = 30;
  var statusBar = 'Palavra';

  void startTimer() async {
    setState(() {
      gameRunning = true;
    });
    while (timer > 0 && words.isNotEmpty) {
      setState(() {
        timer--;
        statusBar = gameRunning ? '00:$timer' : 'Qual é a palavra ?';
      });

      await Future.delayed(
        const Duration(seconds: 1),
      );
    }
  }

  containsWord() {
    if (text.isNotEmpty) {
      if (words.contains(text)) {
        words.remove(text);
        return const SnackBar(content: Text('Acertou'));
        
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(statusBar),
          ),
        ),
        body: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  child: TextField(
                    onChanged: ((value) {
                      text = value;
                    }),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: gameRunning ? containsWord : null,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Enviar',
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: startTimer,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Start Game',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
