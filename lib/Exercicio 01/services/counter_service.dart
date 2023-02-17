import 'package:flutter_injecao_dependencia/Exercicio%2001/services/icounter_service.dart';

class CounterService implements ICounterService {
  @override
  int add(int value) {
    return value + 1;
  }

  @override
  int subtract(int value) {
    return value - 1;
  }
}
