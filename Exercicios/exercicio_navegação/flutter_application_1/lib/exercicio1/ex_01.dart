import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey key1 = GlobalKey();
    GlobalKey key2 = GlobalKey();
     
    return MaterialApp(
      routes: {
        '/page1': ((context) => const Page1()),
        '/page2': ((context) => const Page2())
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Row(
        children: [
          Container(
            height:  double.maxFinite,
            width: 100,
            decoration: const BoxDecoration(color: Colors.amber),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                TextButton(
                    onPressed: (() =>
                        Navigator.of(key2.currentContext!).pushNamed('/page1')),
                    child: const Text('Page 1')),
                TextButton(
                    onPressed: (() =>
                        Navigator.of(context).pushNamed('/page2')),
                    child: const Text('Page 2'))
              ]),
            ),
          ),
          Expanded(
              child: Navigator(
            key: key2,
            initialRoute: '/page1',
            onGenerateRoute: (context) {
              return PageRouteBuilder(
                  pageBuilder: ((context, animation, secondaryAnimation) =>
                      const Page1()));
            },
          ))
        ],
      )),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
