/// AspectRatio组件
library;

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AspectRatio组件'),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

/// 页面上显示一个容器 宽度时屏幕的宽度，高度是容器的一半
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
