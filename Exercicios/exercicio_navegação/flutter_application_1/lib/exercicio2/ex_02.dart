import 'package:flutter/material.dart';

class App2 extends StatelessWidget {
  const App2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: screenSize.height,
          width: 100,
          decoration: const BoxDecoration(color: Colors.amber),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              TextButton(
                  onPressed: (() => controller.jumpToPage(0)),
                  child: const Text('Page 1')),
              TextButton(
                  onPressed: (() => controller.jumpToPage(1)),
                  child: const Text('Page 2'))
            ]),
          ),
        ),
        Expanded(
            child: PageView(
              controller: controller,
              
          children: const [Page1(), Page2()],
        ))
      ],
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
