import 'package:flutter/material.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2001/controllers/counter_controller.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2001/controllers/icounter_controller.dart';
import 'package:flutter_injecao_dependencia/Exercicio%2001/services/counter_service.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  late final ICounterController controller;

  @override
  void initState() {
    super.initState();
    controller = CounterController(
      CounterService(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.purpleAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Contador",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    AnimatedBuilder(
                      animation: controller as CounterController,
                      builder: (context, _) => Text(
                        controller.value.toString(),
                        style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
