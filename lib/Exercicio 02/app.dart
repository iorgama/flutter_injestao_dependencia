import 'package:flutter/material.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2002/views/counter_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Injeção de Dependências",
      home: CounterView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
