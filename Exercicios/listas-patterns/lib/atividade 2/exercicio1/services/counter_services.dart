import 'package:patterns/atividade%202/exercicio1/services/icounter_services.dart';

class CounterService implements IcounterService {
  @override
  int add(int value) {
    return value + 1;
  }
@override
  int subtract(int value) {
    return value - 1;
  }
}