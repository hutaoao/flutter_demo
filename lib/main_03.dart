/// container组件 Text组件
/// 自定义button组件
library;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('hello'),
        ),
        body: const Column(
          children: [MyText(), MyApp(), MyButton()],
        )),
  ));
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: const BoxDecoration(color: Colors.green),
      child: const Text(
          'hello Flutter,hello Flutter,hello Flutter,hello Flutter,',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 3,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.dotted)),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(25),
      ),
      child:
          const Text('按钮', style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
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
      margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      // 外边距
      transform: Matrix4.translationValues(60, -50, 0),
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
      child: const Text('hello',
          style: TextStyle(color: Colors.black, fontSize: 30)),
    ));
  }
}
