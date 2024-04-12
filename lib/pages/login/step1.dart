import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginStep1 extends StatefulWidget {
  const LoginStep1({super.key});

  @override
  State<StatefulWidget> createState() => _LoginStep1State();
}

class _LoginStep1State extends State<LoginStep1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginStep1'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/loginStep2');
                /// Get
                Get.toNamed('/loginStep2');
              },
              child: const Text('下一步')),
          ],
        ),
      ),
    );
  }
}
