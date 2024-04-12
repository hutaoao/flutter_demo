/// Stack层叠组件
library;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Stack层叠组件'),
      ),
      body: const Column(
        children: [
          MyApp(),
        ],
      ),
    ),
  ));
}

/// Stack  相对外部容器进行定位，如果没有外部容器 就相对于整个屏幕进行定位
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Colors.red,
      child: Stack( // 相对外部容器进行定位，如果没有外部容器 就相对于整个屏幕进行定位
        children: [
          Positioned(
            left: 30,
            bottom: 0,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            right: 10,
            top: 100,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
