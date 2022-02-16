import 'package:flutter/material.dart';

class Voos extends StatelessWidget {
  const Voos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(height: 30),
      const Text(
        'Partida',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      const Text(
        'Abril 26, 2022',
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      const SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              Text('GRU',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Text('Guarulhos, Brazil'),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.flight_takeoff,
            size: 40,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(children: const [
            Text('OPO',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            Text('Porto, Portugal'),
          ]),
        ],
      )
    ]);
  }
}
