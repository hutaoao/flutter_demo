import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../tabs/tabs.dart';

class LoginStep3 extends StatefulWidget {
  const LoginStep3({super.key});

  @override
  State<StatefulWidget> createState() => _LoginStep3State();
}

class _LoginStep3State extends State<LoginStep3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginStep3'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushAndRemoveUntil(context,
                  //     MaterialPageRoute(builder: (BuildContext context) {
                  //   return const NavigationExample(index: 4);
                  // }), (route) => false);
                  /// Get
                  Get.offAll(const NavigationExample(index: 4));
                },
                child: const Text('登录')),
          ],
        ),
      ),
    );
  }
}
