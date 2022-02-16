import 'package:flutter/material.dart';

class MyFixedTab extends StatelessWidget {
  const MyFixedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 182, 155, 255),
            leading: Image.network(
                'https://camo.githubusercontent.com/4b783104cc582931f87054bdaa2d0f9353d5a210ef7f772420928c1501f54f22/68747470733a2f2f692e696d6775722e636f6d2f654641723551582e706e67'),
            title: const Text('Meu Pet: a loja do seu pet'),
            bottom: const TabBar(
              tabs: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Catioros',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Gatineos', style: TextStyle(fontSize: 15)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Passarineos', style: TextStyle(fontSize: 15)),
                )
              ],
            ),
          ),
          body: const PetView(),
        ),
      ),
    );
  }
}

class PetView extends StatelessWidget {
  const PetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        petBanner('Catioro'),
        petBanner('Gatineo'),
        petBanner('Passarineos')
      ],
    );
  }
}

petBanner(String animal) {
  return Center(
    child: Text(
      animal,
      style: const TextStyle(fontSize: 30),
    ),
  );
}