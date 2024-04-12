import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('按钮组件'),
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
    return ListView(
      children: [
        const Text('ElevatedButton'),
        ElevatedButton(onPressed: () {}, child: const Text('按钮')),
        ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.home), label: const Text('首页')),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.red), // 背景颜色
            foregroundColor: MaterialStatePropertyAll(Colors.white), // 文字/图标 颜色
          ),
          child: const Text('按钮'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Colors.amber), // 背景颜色
            foregroundColor: const MaterialStatePropertyAll(Colors.white), // 文字/图标 颜色
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5), // 配置圆角 - 默认圆角
              )
            )
          ),
          child: const Text('圆角按钮'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Colors.lime), // 背景颜色
              foregroundColor: const MaterialStatePropertyAll(Colors.white), // 文字/图标 颜色
              shape: MaterialStateProperty.all(
                const CircleBorder(side: BorderSide(color: Colors.black))
              )
          ),
          child: const Text('圆形'),
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: ElevatedButton(onPressed: () {}, child: const Text('自适应按钮')),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue), // 背景颜色
                  foregroundColor: MaterialStatePropertyAll(Colors.white), // 文字/图标 颜色
                ),
                child: const Text('自定义宽高的按钮'),
              ),
            )
          ],
        ),
        const Text('TextButton'),
        TextButton(onPressed: () {}, child: const Text('文本按钮')),
        TextButton.icon(onPressed: () {}, icon: const Icon(Icons.home), label: const Text('首页')),
        const Text('OutlinedButton'),
        OutlinedButton(onPressed: () {}, child: const Text('边框按钮')),
        OutlinedButton(
          onPressed: () {},
          style: const ButtonStyle(
            side: MaterialStatePropertyAll(
              BorderSide(width: 3, color: Colors.red)
            )
          ),
          child: const Text('红色边框按钮'),
        ),
        OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.home), label: const Text('首页')),
        const Text('IconButton'),
        IconButton(onPressed: () {}, icon: const Icon(Icons.home))
      ],
    );
  }
}
