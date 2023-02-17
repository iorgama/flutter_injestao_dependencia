import 'package:flutter/foundation.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2002/services/counter_service.dart';

class CounterController extends ChangeNotifier {
  late CounterService _counterService;

  void setCounterService(CounterService instance) => _counterService = instance;

  CounterService get counterService => _counterService;

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
