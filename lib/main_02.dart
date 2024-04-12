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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 100,
      height: 100,
      alignment: Alignment.bottomRight,
      // 内容对齐方式
      decoration: BoxDecoration(
          // 背景色
          color: Colors.yellow,
          // 边框
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          // 圆角
          boxShadow: const [
            // 配置阴影效果
            BoxShadow(
              color: Colors.blue,
              blurRadius: 10,
            )
          ],
          // 渐变 - LinearGradient 线性渐变
          gradient: const LinearGradient(colors: [Colors.red, Colors.green])),
      child: const Text('hello', style: TextStyle(color: Colors.black, fontSize: 30)),
    ));
  }
}
