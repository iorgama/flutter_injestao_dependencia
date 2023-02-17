import 'package:flutter_injecao_dependencia/Exercicio%2003/controllers/counter_controller.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late final CounterController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Consumer<CounterController>(
              builder: (context, controller, child) => AnimatedBuilder(
                animation: controller,
                builder: (context, _) => Text(
                  controller.value.toString(),
                  style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
