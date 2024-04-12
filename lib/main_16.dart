/// Stack层叠组件
/// 示例1
library;

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack层叠组件'),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

/// Stack  相对外部容器进行定位，如果没有外部容器 就相对于整个屏幕进行定位
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // 获取设备的宽度和高度

    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 80),
          children: const [
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
          ],
        ),
        Positioned(
          left: 0,
          top: 0,
          width: size.width, // 配置子元素的宽度/高度
          height: 50,
          child: Container(
              height: 50,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text('我是头部组件')
          ),
        )
      ],
    );
  }
}
