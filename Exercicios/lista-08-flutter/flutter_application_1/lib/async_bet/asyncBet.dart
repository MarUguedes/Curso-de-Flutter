import 'dart:math';
import 'package:flutter/material.dart';

const lineHeight = 500.0;

class AsyncBet extends StatefulWidget {
  const AsyncBet({Key? key}) : super(key: key);

  @override
  State<AsyncBet> createState() => _AsyncBetState();
}

class _AsyncBetState extends State<AsyncBet> {
  var lineRed = 0;
  
  void setLineRed(int progresso) {
    setState(() {
      lineRed += progresso;
      lineRed = lineRed >= 100 ? 100 : lineRed;
    });
  }

  var lineBlue = 0;
  void setLineBlue(int progresso) {
    setState(() {
      lineBlue += progresso;

      lineBlue = lineBlue >= 100 ? 100 : lineBlue;
    });
  }

  var linePurple = 0;
  void setLinePurple(int progresso) {
    setState(() {
      linePurple += progresso;
      linePurple = linePurple >= 100 ? 100 : linePurple;
    });
  }

  bool winner() {
    return lineBlue >= 100 || linePurple >= 100 || lineRed >= 100;
  }

  Future<String> onGame() async {
    setLineRed(0);
    setLinePurple(0);
    setLineBlue(0);
    var random = Random();

    while (!winner()) {
      setLineBlue(random.nextInt(10));
      setLinePurple(random.nextInt(10));
      setLineRed(random.nextInt(10));
      await Future.delayed(
        const Duration(milliseconds: 100),
      );
    }
    if (lineRed >= 100) {
      return 'Vermelho';
    }
    if (lineBlue >= 100) {
      return 'Azul';
    }
    if (linePurple >= 100) {
      return 'Roxo';
    }
    return '';
  }

  void StartGame() async {
    final resultGame = await onGame();
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Text(resultGame),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AsyncBet'),
          actions: [
            ElevatedButton(
              onPressed: StartGame,
              child: const Text(
                'Start',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
        body: SizedBox(
            height: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const Coluna(),
                    ColunaProgress(
                      progresso: lineRed,
                      cor: Colors.red,
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const Coluna(),
                    ColunaProgress(
                      progresso: lineBlue,
                      cor: Colors.blue,
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const Coluna(),
                    ColunaProgress(
                      progresso: linePurple,
                      cor: Colors.purple,
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class Coluna extends StatelessWidget {
  const Coluna({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: lineHeight,
      width: 50,
      color: Colors.grey[400],
    );
  }
}

class ColunaProgress extends StatelessWidget {
  ColunaProgress({Key? key, required this.progresso, required this.cor})
      : super(key: key);
  final progresso;
  Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: lineHeight * (progresso / 100),
      width: 50,
      color: cor,
    );
  }
}
