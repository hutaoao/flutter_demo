import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginStep2 extends StatefulWidget {
  const LoginStep2({super.key});

  @override
  State<StatefulWidget> createState() => _LoginStep2State();
}

class _LoginStep2State extends State<LoginStep2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginStep2'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, '/loginStep3');
                  /// Get
                  Get.toNamed('/loginStep3');
                },
                child: const Text('下一步/pushReplacementNamed')),
          ],
        ),
      ),
    );
  }
}
