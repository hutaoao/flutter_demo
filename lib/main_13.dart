/// 页面布局 - Column
library;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Column组件'),
      ),
      body: const MyApp(),
    ),
  ));
}

/// Column组件
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 设置无穷大/足够大的值 可以撑满屏幕
      height: double.infinity,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // 主轴的排序方式
        crossAxisAlignment: CrossAxisAlignment.end, // 次轴的排序方式
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
