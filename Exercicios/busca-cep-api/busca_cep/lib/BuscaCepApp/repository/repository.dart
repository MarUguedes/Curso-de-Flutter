import 'dart:convert';
import 'package:busca_cep/BuscaCepApp/model/cep_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CepRepository {
  String status = '';

  Future consultacep(String cep) async {
    String url = 'https://viacep.com.br/ws/$cep/json';
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);

    CepModel localizacao = CepModel(
        logradouro: retorno['logradouro'],
        bairro: retorno['bairro'],
        localidade: retorno['localidade'],
        uf: retorno['uf'],
        ddd: retorno['ddd']);

    status =
        'Endereço: ${localizacao.logradouro}\n${localizacao.bairro}\n${localizacao.localidade}\n${localizacao.uf}\n${localizacao.ddd}';
    print(status);

    return localizacao;
  }
}
