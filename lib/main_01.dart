/// 入门
library;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('hello'),
        ),
        body: const MyApp()),
  ));
}

// 自定义组件其实就是一个类，这个类需要继承StatelessWidget/StatefulWidget
// StatelessWidget 是无状态组件，状态不可变的Widget
// StatefulWidget 是有状态组件，持有的状态可能在Widget生命周期改变
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'word',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.red, fontSize: 40),
      ),
    );
  }
}
