import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wrap组件'),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30, // 水平间距
      runSpacing: 20, // 垂直间距
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceEvenly,
      children: [
        MyButton('hello', onPressed: () {}),
        MyButton('hello1', onPressed: () {}),
        MyButton('hello12', onPressed: () {}),
        MyButton('hello123', onPressed: () {}),
        MyButton('hello1234', onPressed: () {}),
        MyButton('hello12345', onPressed: () {}),
        MyButton('hello123456', onPressed: () {}),
        MyButton('hello1234567', onPressed: () {}),
      ],
    );
  }
}

/// 自定义按钮
class MyButton extends StatelessWidget {
  String text;
  void Function()? onPressed;

  MyButton(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: const MaterialStatePropertyAll(Colors.black),
          backgroundColor: const MaterialStatePropertyAll(Colors.grey),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
            )
          )
        ),
        child: Text(text),
      ),
    );
  }
}
