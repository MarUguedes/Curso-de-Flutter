import 'package:flutter/material.dart';

class Hostel extends StatefulWidget {
  const Hostel({Key? key}) : super(key: key);

  @override
  _HostelState createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  final Color cor1 = const Color.fromARGB(255, 194, 26, 82);
  final Color cor2 = const Color.fromARGB(255, 248, 132, 171);
  final Color cor3 = const Color.fromARGB(255, 243, 224, 234);
  final Color cor4 = Colors.white;

  List selecionados = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('ErBienBi - Hospedagens'),
          ),
          backgroundColor: cor1,
        ),
        body: ListView(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Selecione a data da sua reserva',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )),
            GridView.count(
              crossAxisCount: 7,
              shrinkWrap: true,
              children: List.generate(30, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (selecionados.contains(index)) {
                        selecionados.remove(index);
                      } else {
                        selecionados.add(index);
                      }
                    });
                  },
                  onDoubleTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(2),
                    color: index == setSelecionado(selecionados, index)
                        ? cor2
                        : cor3,
                    child: Text(
                      '${index + 1}',
                      style:
                          TextStyle(color: cor1, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text('Abril 2022',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}

setSelecionado(List selecionados, index) {
  return selecionados.contains(index) ? index : -1;
}
