/// 网格组件 - GridView
library;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'assets/listData.dart';

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
    var list = listData.map((e) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.green)),
        child: Column(
          children: [
            Image.network('${e['url']}'),
            const SizedBox(height: 20),
            Text('${e['title']}'),
            const SizedBox(height: 20),
            Text('${e['author']}')
          ],
        ),
      );
    });

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      // 一行的数量
      crossAxisSpacing: 10,
      // 水平间距
      mainAxisSpacing: 10,
      // 垂直间距
      childAspectRatio: 0.8,
      // 宽高比
      padding: const EdgeInsets.all(10),
      children: _initGridView(),
    );
  }
}
