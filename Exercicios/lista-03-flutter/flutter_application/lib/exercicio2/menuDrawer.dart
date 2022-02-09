import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        endDrawer: Drawer(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(
                    Icons.bolt,
                    color: Colors.blue,
                    size: 40,
                  ),
                  title: Text('Flutter'),
                  subtitle: Text('Tudo são widgets'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.tag_faces,
                    color: Colors.red,
                    size: 40,
                  ),
                  title: Text('Dart'),
                  subtitle: Text('É muito forte'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.coffee,
                    color: Colors.brown,
                    size: 40,
                  ),
                  title: Text('Cafessineo'),
                  subtitle: Text('Quero café'),
                ),
              ],
            ),
            backgroundColor: Colors.pink[100]),
        appBar: AppBar(
          title: Text(
            'Menu Drawer',
            style: TextStyle(color: Colors.pink[100]),
          ),
          backgroundColor: Colors.pink[700],
        ),
      ),
    );
  }
}
