import 'package:flutter/foundation.dart';
import '../services/counter_services.dart';
import '../services/icounter_services.dart';

class CounterController extends ChangeNotifier {
  CounterController(this._icounter);
  final IcounterService _icounter;
  int value = 0;
  

  void increment() {
    value = _icounter.add(value);
    notifyListeners();
  }

  void decrement() {
    value = _icounter.subtract(value);
    notifyListeners();
  }
}
