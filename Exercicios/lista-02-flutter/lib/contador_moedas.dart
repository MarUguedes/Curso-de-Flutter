import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 0;
  int cooper = 0;
  int silver = 0;
  int gold = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //color: Colors.amber,
      theme: ThemeData(primarySwatch: Colors.amber),
      title: 'Contador de Moedas',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'CONTADOR DE MOEDAS',
            style: TextStyle(
              //color: Colors.white,
               fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          //backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Text(
            "COPPER: $count\nSILVER: $silver\nGOLD: $gold",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(height: 70),
        ),
        floatingActionButton: FloatingActionButton(
          //backgroundColor: Colors.amber,
          child: Icon(Icons.attach_money),
          onPressed: () {
            setState(() {
              count++;

              if (count == 10) {
                silver++;
                count = 0;
              }
              if (silver == 10) {
                gold++;
                silver = 0;
              }
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
