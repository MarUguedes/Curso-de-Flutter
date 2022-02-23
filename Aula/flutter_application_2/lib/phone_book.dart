import 'package:flutter/material.dart';

class PhoneBook extends StatefulWidget {
  const PhoneBook({Key? key}) : super(key: key);

  @override
  _PhoneBookState createState() => _PhoneBookState();
}

class _PhoneBookState extends State<PhoneBook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contatos'),
        ),
        body: Column(children: [
          Expanded(
            child: ListView.separated(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Amanda'),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 2,
                  thickness: 2,
                  color: Colors.black,
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
