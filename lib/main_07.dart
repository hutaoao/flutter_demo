/// 动态列表 - ListView
library;

import 'package:flutter/material.dart';
import 'assets/listData.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('动态列表 - ListView'),
      ),
      body: const MyList(),
    ),
  ));
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  // 私有方法
  List<Widget> _initListData() {
    var list = listData.map((e) {
      return ListTile(
        leading: Image.network('${e['url']}'),
        title: Text('${e['title']}'),
        subtitle: Text('${e['author']}'),
      );
    });

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: _initListData());
  }
}
