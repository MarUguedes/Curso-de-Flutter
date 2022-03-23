
import 'package:busca_cep/BuscaCepApp/page/home_page.dart';
import 'package:busca_cep/BuscaCepApp/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BuscaCepApp/bloc/cep_bloc.dart';



void main() {
  
  runApp(BlocProvider(
    create: (context) {
      return CepBloc(CepRepository());
    },
    child: MaterialApp(
      theme:ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner:false,
      home: const BuscaCep()),
  ));
}
