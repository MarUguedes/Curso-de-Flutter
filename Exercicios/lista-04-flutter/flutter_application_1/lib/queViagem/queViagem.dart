import 'package:flutter/material.dart';
import 'package:flutter_application_1/queViagem/mapas/mapa.dart';
import 'package:flutter_application_1/queViagem/passeios/passeios.dart';
import 'package:flutter_application_1/queViagem/voos/voos.dart';

class QueViagem extends StatelessWidget {
  const QueViagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.yellow[800]),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow[800],
            title: Center(
              child: Text(
                'Que viagem! Turismo',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.brown[900],
                    fontWeight: FontWeight.w600),
              ),
            ),
            bottom: TabBar(
              tabs: [
                Column(
                  children: const [
                    Icon(Icons.flight),
                    Text('Voos'),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.work),
                    Text('Passeios'),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.map),
                    Text('Mapas'),
                  ],
                ),
              ],
            ),
          ),
          body: const TabTravel(),
        ),
      ),
    );
  }
}

class TabTravel extends StatelessWidget {
  const TabTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      Voos(),
      Padding(
        padding: EdgeInsets.all(20),
        child: Passeios(),
      ),
      Mapas()

    ]);
  }
}
