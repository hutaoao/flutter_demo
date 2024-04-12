import 'package:flutter/material.dart';
import 'assets/listData.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card组件-循环遍历2'),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

/// ClipOval/CircleAvatar 圆形图片
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((e) {
        return Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network('${e['url']}', fit: BoxFit.cover)
              ),
              ListTile(
                title: Text(e['author']),
                subtitle: Text(e['title']),
                leading: ClipOval(
                  child: Image.network('${e['url']}', fit: BoxFit.cover, width: 40, height: 40,),
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
