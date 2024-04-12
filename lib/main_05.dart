/// 图标组件
/// 内置图标
/// 自定义图标
library;

import 'package:flutter/material.dart';
import 'assets/alibabaFont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Icon 图标组件S'),
      ),
      body: const Column(
        children: [MyIcon1(), MyIcon2()],
      ),
    ),
  ));
}

/// 内置图标
class MyIcon1 extends StatelessWidget {
  const MyIcon1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(Icons.home, size: 50, color: Colors.red),
        SizedBox(height: 30),
        Icon(Icons.search, size: 50, color: Colors.blue),
        SizedBox(height: 30),
        Icon(Icons.admin_panel_settings, size: 50, color: Colors.blue)
      ],
    );
  }
}

/// 自定义图标 - 阿里巴巴图标库
class MyIcon2 extends StatelessWidget {
  const MyIcon2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 30),
        Icon(AliIcon.book, size: 50, color: Colors.orange),
        SizedBox(height: 30),
        Icon(AliIcon.weixin, size: 50, color: Colors.green),
        SizedBox(height: 30),
        Icon(AliIcon.baohuhaoma, size: 50, color: Colors.blueGrey),
        SizedBox(height: 30),
        Icon(AliIcon.zhuanshuguwen, size: 50, color: Colors.purple),
      ],
    );
  }
}
