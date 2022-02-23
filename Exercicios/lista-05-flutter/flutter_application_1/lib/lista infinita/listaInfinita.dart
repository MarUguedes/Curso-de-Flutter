import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
                child: Text(
              'Lista infinita',
            )),
          ),
          body: ListView.builder(
            itemCount: 1000,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                title: Text('Item número: $index'),
              );
            },
          )),
    );
  }
}
