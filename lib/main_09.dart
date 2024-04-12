/// 网格组件 - GridView
library;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('网格组件 - GridView'),
      ),
      body: const MyGrid(),
    ),
  ));
}

/// GridView.count
class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  List<Widget> _initGridView() {
    List<Widget> list = [];
    for (var i = 0; i < 10; i++) {
      list.add(Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.blue),
        child: const Text(
          'hello',
          style: TextStyle(fontSize: 20),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 一行的数量
      crossAxisSpacing: 10, // 水平间距
      mainAxisSpacing: 10, // 垂直间距
      childAspectRatio: 0.7, // 宽高比
      padding: const EdgeInsets.all(10),
      children: _initGridView(),
    );
  }
}

/// GridView.extent
/*class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 200, // 横轴子元素最大的长度
      children: const [
        Icon(Icons.home),
        Icon(Icons.accessibility),
        Icon(Icons.backpack),
        Icon(Icons.cabin),
        Icon(Icons.dangerous),
        Icon(Icons.sailing),
      ],
    );
  }
}*/
