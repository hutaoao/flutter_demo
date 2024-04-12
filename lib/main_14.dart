/// 弹性布局 - Flex+Expanded
library;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('弹性布局/Flex+Expanded'),
      ),
      body: const Column(
        children: [
          MyApp(),
          SizedBox(height: 50),
          MyApp2(),
          SizedBox(height: 100),
          MyApp3(),
        ],
      ),
    ),
  ));
}

/// 左边占3/1 右边占3/2
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 1,
          child: IconBox(Icons.face, color: Colors.green), // 元素设置宽度无效
        ),
        Expanded(flex: 2, child: IconBox(Icons.accessible, color: Colors.blue))
      ],
    );
  }
}

// 右边固定宽度 左边自适应
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 1,
          child: IconBox(Icons.face, color: Colors.green), // 元素设置宽度无效
        ),
        IconBox(Icons.accessible, color: Colors.blue)
      ],
    );
  }
}

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.black,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(height: 100, color: Colors.blue),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.yellow),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
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
