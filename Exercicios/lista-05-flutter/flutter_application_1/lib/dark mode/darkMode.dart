import 'package:flutter/material.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  _DarkModeState createState() => _DarkModeState();
}

bool darkMode = true;
Color corFundo1 = darkMode
    ? const Color.fromARGB(255, 17, 64, 102)
    : const Color.fromARGB(255, 83, 133, 173);
Color corFundo2 = darkMode
    ? const Color.fromARGB(226, 7, 28, 44)
    : const Color.fromARGB(255, 83, 133, 173);
Color corCardInicial = darkMode
    ? const Color.fromARGB(255, 22, 68, 105)
    : const Color.fromARGB(255, 69, 106, 136);
Color corCardClick = darkMode
    ? const Color.fromARGB(255, 37, 123, 194)
    : const Color.fromARGB(255, 156, 192, 221);
Color corText = darkMode
    ? const Color.fromARGB(255, 138, 173, 200)
    : const Color.fromARGB(255, 17, 51, 78);

String statusMode = 'Light Mode';

class _DarkModeState extends State<DarkMode> {
  bool darkMode = true;
  Color corFundo1 = const Color.fromARGB(255, 17, 64, 102);

  List<Widget> cardList = [
    CardElement(
      icone: Icon(
        Icons.lightbulb,
        size: 60,
        color: corText,
      ),
      item: 'Luzes',
      onClick: () {},
    ),
    CardElement(
      icone: Icon(
        Icons.thermostat,
        size: 60,
        color: corText,
      ),
      item: 'Temperatura',
      onClick: () {},
    ),
    CardElement(
      icone: Icon(
        Icons.ac_unit,
        size: 60,
        color: corText,
      ),
      item: 'Lavadora',
      onClick: () {},
    ),
    CardElement(
      icone: Icon(
        Icons.security,
        size: 60,
        color: corText,
      ),
      item: 'Segurança',
      onClick: () {},
    ),
    CardElement(
      icone: Icon(
        Icons.wifi,
        size: 60,
        color: corText,
      ),
      item: 'Wifi',
      onClick: () {},
    ),
    CardElement(
      icone: Icon(
        Icons.tv,
        size: 70,
        color: corText,
      ),
      item: 'Televisor',
      onClick: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [corFundo1, corFundo2], begin: Alignment.topCenter)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 70,
                      color: corText,
                    ),
                    Column(
                      children: [
                        Text(
                          'SWEET HOME',
                          style: TextStyle(fontSize: 35, color: corText),
                        ),
                        Text(
                          'O que gostaria de monitorar?',
                          style: TextStyle(
                              color: corText, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1.35,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: cardList,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    statusMode,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: corText),
                  ),
                  Switch(
                      value: darkMode,
                      onChanged: (bool value) {
                        setState(() {
                          darkMode = !darkMode;
                        });
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardElement extends StatefulWidget {
  final Icon icone;
  final String item;
  final void Function() onClick;

  const CardElement(
      {Key? key,
      required this.icone,
      required this.item,
      required this.onClick})
      : super(key: key);

  @override
  State<CardElement> createState() => _CardElementState();
}

class _CardElementState extends State<CardElement> {
  var color = corCardInicial;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onClick();
        if (color == corCardInicial) {
          setState(() {
            color = corCardClick;
          });
        } else {
          setState(() {
            color = corCardInicial;
          });
        }
      },
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              widget.icone,
              Text(
                widget.item,
                style: TextStyle(fontSize: 20, color: corText),
              )
            ],
          ),
        ),
      ),
    );
  }
}

abstract class AppTheme {
  static ThemeData corItem() {
    return ThemeData(
      primarySwatch: Colors.red,
      iconTheme: const IconThemeData(color: Colors.red),
    );
  }
}
