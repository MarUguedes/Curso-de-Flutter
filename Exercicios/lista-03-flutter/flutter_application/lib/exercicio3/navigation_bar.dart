import 'package:flutter/material.dart';

class MyNavigatorBar extends StatelessWidget {
  const MyNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[300],
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.confirmation_num),
                label: 'Configurações',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.login),
                label: 'Login',
              )
            ]),
      ),
    );
  }
}
