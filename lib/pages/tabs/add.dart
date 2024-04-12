import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/counter.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<StatefulWidget> createState() => _AddState();
}

class _AddState extends State<Add> {
  CounterController counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text('${counterController.counter}', style: const TextStyle(fontSize: 30))),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              counterController.inc();
            },
            child: const Text('加一')
          )
        ],
      ),
    );
  }
}
