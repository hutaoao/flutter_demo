/// Card组件
library;

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card组件'),
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
        const Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text('张三', style: TextStyle(fontSize: 28)),
                subtitle: Text('程序员'),
              ),
              Divider(),
              ListTile(
                title: Text('电话：xxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxx'),
              )
            ],
          ),
        ),
        Card(
          elevation: 10,
          color: Colors.black12,
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder( // Card阴影效果
            borderRadius: BorderRadius.circular(30), // 圆角
          ),
          child: const Column(
            children: [
              ListTile(
                title: Text('张三2', style: TextStyle(fontSize: 28)),
                subtitle: Text('程序员'),
              ),
              Divider(),
              ListTile(
                title: Text('电话：xxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxx'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
