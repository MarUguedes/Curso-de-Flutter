import 'package:bloc/bloc.dart';
import 'package:busca_cep/BuscaCepApp/model/cep_model.dart';
import 'package:busca_cep/BuscaCepApp/repository/repository.dart';

class CepBloc extends Cubit {
  CepBloc(
    this.repository,
  ) : super([]);
  final CepRepository repository;

  Future<CepModel> loadCep(String cep) async {
    final localizacao = await repository.consultacep(cep);
    emit(localizacao);
    return localizacao;
  }
}
