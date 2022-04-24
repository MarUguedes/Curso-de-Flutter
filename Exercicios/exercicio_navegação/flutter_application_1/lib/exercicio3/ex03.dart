import 'package:flutter/material.dart';

class App3 extends StatelessWidget {
  const App3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name != null) {
          if (settings.name == '/second') {
            final message = settings.arguments as String;
            MaterialPageRoute(
                builder: ((context) => SecondPage(message: message)));
          }
        }
        return null;
      },
      initialRoute: '/',
      routes: {
        '/': ((context) => const FirstPage()),
        
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Primeira tela'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (() => Navigator.pushNamed(context,'/second')),
                child: const Text('Próximo'))
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.message}) : super(key: key);
  final message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(message)),
    );
  }
}
