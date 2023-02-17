import 'package:flutter/material.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2003/services/counter_service.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2003/controllers/counter_controller.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2003/views/counter_view.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterController(
        CounterService(),
      ),
      child: const MaterialApp(
        title: "Injeção de Dependências",
        home: CounterView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
