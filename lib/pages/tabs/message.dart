import 'package:flutter/material.dart';
import '../../controller/counter.dart';
import 'package:get/get.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<StatefulWidget> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  CounterController counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('共享'),
          Obx(() => Text('${counterController.counter}', style: const TextStyle(fontSize: 30))),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                counterController.dec();
              },
              child: const Text('减一')
          )
        ],
      ),
    );
  }
}
