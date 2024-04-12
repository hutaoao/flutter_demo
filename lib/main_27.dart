import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // 改变数据必须使用setState
          setState(() {
            _list.add('我是一个列表');
          });
        },
      ),
      appBar: AppBar(title: const Text('点击添加列表')),
      body: ListView(
        children: _list.map((e) {
          return ListTile(
            title: Text(e),
          );
        }).toList(),
      ),
    );
  }
}
