/// 动态列表 - builder
library;

import 'package:flutter/material.dart';
import 'assets/listData.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('动态列表 - builder'),
      ),
      body: const MyList(),
    ),
  ));
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (content, index) {
          return ListTile(
            leading: Image.network('${listData[index]['url']}'),
            title: Text('${listData[index]['title']}'),
            subtitle: Text('${listData[index]['author']}'),
          );
        }
    );
  }
}
