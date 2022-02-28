import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscureText = true;
  void showSignUpDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Sign Up'),
            content: const Text('Deseja efetuar o cadastro?'),
            actions: [
              TextButton(
                  onPressed: Navigator.of(context).pop,
                  child: const Text('Não')),
              TextButton(
                  onPressed: Navigator.of(context).pop,
                  child: const Text('Sim')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              const TextField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Nome de usuário',
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ).copyWith(
                    suffixIcon: IconButton(
                        onPressed: (() => setState(() {
                              obscureText = !obscureText;
                            })),
                        icon: obscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility))),
                obscureText: obscureText,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Nome completo',
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(children: const [
                Expanded(
                  flex: 6,
                  child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Data de nascimento',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      readOnly: true),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 5,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Celular',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: showSignUpDialog,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Enviar'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
