import 'package:flutter/foundation.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2001/controllers/icounter_controller.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2001/services/icounter_service.dart';

class CounterController extends ChangeNotifier implements ICounterController {
  CounterController(this._counterService);

  final ICounterService _counterService;

  @override
  int value = 0;

  @override
  void increment() {
    value = _counterService.add(value);
    notifyListeners();
  }

  @override
  void decrement() {
    value = _counterService.subtract(value);
    notifyListeners();
  }
}
