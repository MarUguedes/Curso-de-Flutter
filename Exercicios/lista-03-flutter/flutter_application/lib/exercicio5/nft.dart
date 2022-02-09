import 'package:flutter/material.dart';

class CardNFT extends StatelessWidget {
  const CardNFT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 30, 56),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Image.network(
                  'https://camo.githubusercontent.com/dc30ec513e394f4863cdd26fcf702fb5519280a1f2ed33736771477e64d005dc/68747470733a2f2f692e696d6775722e636f6d2f773339717a61712e706e67'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20),
              child: Text(
                'Equilibrium #3429',
                style: TextStyle(
                    color: Color.fromARGB(255, 56, 218, 209),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const Text(
              'Nossa coleção Equilibrium promove calma e balanço',
              style: TextStyle(color: Color.fromARGB(255, 139, 163, 184)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      '0.041 ETH',
                      style: TextStyle(
                        color: Color.fromARGB(255, 56, 218, 209),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.watch_later,
                          color: Color.fromARGB(255, 139, 163, 184),
                        ),
                        Container(width: 4),
                        const Text(
                          'restam 3 dias',
                          style: TextStyle(
                              color: Color.fromARGB(255, 139, 163, 184),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 10,
            ),
            Center(
              child: Container(
                width: 450,
                height: 0.3,
                color: Colors.blueGrey,
              ),
            ),
            Container(
              height: 2,
            ),
            const ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/88554358?s=400&u=245e4196d4b27fac416c3808e31559337dfdd10e&v=4')),
              title: Text(
                'Criado por Marcela Guedes ',
                style: TextStyle(
                  color: Color.fromARGB(255, 139, 163, 184),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
