import 'package:flutter/material.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2003/widgets/header_widget.dart';
import 'package:provider/provider.dart';
import '../controllers/counter_controller.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const HeaderWidget(),
            Consumer<CounterController>(
              builder: (context, controller, value) => Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => controller.increment(),
                      icon: const Icon(
                        Icons.add_circle,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    IconButton(
                      onPressed: () => controller.decrement(),
                      icon: const Icon(
                        Icons.remove_circle,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
