import 'package:flutter/foundation.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2003/services/counter_service.dart';

class CounterController extends ChangeNotifier {
  CounterController(this._counterService);
  final CounterService _counterService;

  int value = 0;

  void increment() {
    value = _counterService.add(value);
    notifyListeners();
  }

  void decrement() {
    value = _counterService.subtract(value);
    notifyListeners();
  }
}
