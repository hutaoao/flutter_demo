/// 页面布局 - padding Row
library;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Row组件'),
      ),
      body: const MyApp(),
    ),
  ));
}

/// Padding 组件
/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text('hello'),
    );
  }
}*/

/// Row组件
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 设置无穷大/足够大的值 可以撑满屏幕
      height: double.infinity,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴的排序方式
        crossAxisAlignment: CrossAxisAlignment.center, // 次轴的排序方式
        children: [
          IconBox(Icons.cabin),
          IconBox(Icons.face, color: Colors.green),
          IconBox(Icons.accessible, color: Colors.blue),
        ],
      ),
    );
  }
}

/// 自定义区块
class IconBox extends StatelessWidget {
  Color color;
  IconData icon;

  IconBox(this.icon, {super.key, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      color: color,
      alignment: Alignment.center,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}
