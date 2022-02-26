import 'package:flutter/material.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  _DarkModeState createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool darkMode = true;
  int selecionado = -1;
  Color cor1 = const Color(0xFF114066);
  Color cor2 = const Color(0xE0071C2C);
  Color cor3 = const Color(0xFF164469);
  Color cor4 = const Color(0xFF257BC2);
  Color cor5 = const Color(0xFF8AADC8);

  List<String> item = [
    'Luzes',
    'Temperatura',
    'Lavadora',
    'Segurança',
    'Wifi',
    'Televisor'
  ];
  List icones = [
    Icons.lightbulb,
    Icons.thermostat,
    Icons.water,
    Icons.security,
    Icons.wifi,
    Icons.tv,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [cor1, cor2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
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
                      color: cor5,
                    ),
                    Column(
                      children: [
                        Text(
                          'SWEET HOME',
                          style: TextStyle(fontSize: 35, color: cor5),
                        ),
                        Text(
                          'O que gostaria de monitorar?',
                          style: TextStyle(
                              color: cor5, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GridView.count(
                //Cria grid com 2 colunas
                crossAxisCount: 2,

                //Permite que o grid compartilhe espaço com outros widgets
                shrinkWrap: true,
                childAspectRatio: 1.35,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(
                  6,
                  (index) {
                    return GestureDetector(
                      onTap: (() {
                        setState(() {
                          selecionado = index;
                        });
                      }),
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: index == selecionado ? cor4 : cor3,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              icones[index],
                              size: 55,
                              color: cor5,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              item[index],
                              style: TextStyle(color: cor5, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    darkMode ? 'Light Mode' : 'Dark Mode',
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold, color: cor5),
                  ),
                  Switch(
                      value: darkMode,
                      onChanged: (bool value) {
                        setState(() {
                          darkMode = !darkMode;
                          if (darkMode) {
                            cor1 = const Color(0xFF114066);
                            cor2 = const Color(0xE0071C2C);
                            cor3 = const Color(0xFF164469);
                            cor4 = const Color(0xFF257BC2);
                            cor5 = const Color(0xFF8AADC8);
                          } else {
                            cor4 = const Color.fromARGB(255, 168, 200, 223);
                            cor3 = const Color.fromARGB(255, 129, 157, 180);
                            cor5 = const Color(0xFF164469);
                            cor2 = const Color.fromARGB(255, 187, 207, 223);
                            cor1 = const Color.fromARGB(255, 187, 207, 223);
                          }
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
