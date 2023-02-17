import 'package:flutter_injecao_dependencia/Exercicio%2001/services/counter_service.dart';

abstract class ICounterController {
  ICounterController(this._counterService);
  final CounterService _counterService;
  int value = 0;
  void increment();
  void decrement();
}
