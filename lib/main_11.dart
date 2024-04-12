/// 动态网格 - GridView.builder
library;

import 'package:flutter/material.dart';
import 'assets/listData.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('动态网格 - GridView.builder'),
      ),
      body: const MyGrid(),
    ),
  ));
}

/// GridView.count
class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8
      ),
      itemBuilder: (content, index) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.green)),
          child: Column(
            children: [
              Image.network('${listData[index]['url']}'),
              const SizedBox(height: 20),
              Text('${listData[index]['title']}'),
              const SizedBox(height: 20),
              Text('${listData[index]['author']}')
            ],
          ),
        );
      });
  }
}
