import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

List<CepModel> cepModelFromJason(String str) =>
    List<CepModel>.from(json.decode(str).map((x) => CepModel.fromJson(x)));

class CepModel {
  final String logradouro;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;

  CepModel(
      {required this.logradouro,
      required this.bairro,
      required this.localidade,
      required this.uf,
      required this.ddd});

  factory CepModel.fromJson(Map<String, dynamic> json) => CepModel(
      logradouro: json['logradouro'],
      bairro: json['bairro'],
      localidade: json['localidade'],
      uf: json['uf'],
      ddd: json['ddd']);
}
