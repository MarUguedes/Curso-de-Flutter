import 'package:busca_cep/BuscaCepApp/bloc/cep_bloc.dart';
import 'package:busca_cep/BuscaCepApp/model/cep_model.dart';
import 'package:busca_cep/BuscaCepApp/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuscaCep extends StatefulWidget {
  const BuscaCep({Key? key}) : super(key: key);

  @override
  State<BuscaCep> createState() => _BuscaCepState();
}

class _BuscaCepState extends State<BuscaCep> {
  TextEditingController controller = TextEditingController();
  final blocCep = CepBloc(CepRepository());

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cepBloc = context.read<CepBloc>();
    String dados = '';

    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Busca Cep'),
              backgroundColor: Colors.amber,
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
               // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                 
                  TextField(
                    controller: controller,
                    decoration: const InputDecoration(hintText: 'Digite o cep'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      child: const Text('Buscar'),
                      onPressed: () async {
                        String cep = controller.text;
                        CepModel model = await cepBloc.loadCep(cep);
                        _showDialog(model);
                      }),
                      SizedBox(height:100),
                      Image.network('https://cdn.discordapp.com/attachments/664248161333936128/956218802754945064/unknown.png',),
                ],
              ),
            )));
  }

  void _showDialog(CepModel cepModel) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(20),
            title: const Text('Endereço'),
            content: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    
                    children: [
                      Text('DDD: ${cepModel.ddd}'),
                      const SizedBox(
                        width: 30,
                      ),
                      Text('UF: ${cepModel.uf}'),
                    ],
                  ),
                  Text('Bairro: ${cepModel.bairro}'),
                  Text('Rua: ${cepModel.logradouro}'),
                  Text('Cidade: ${cepModel.localidade}'),
                ],
              ),
            ),
          );
        });
  }
}
