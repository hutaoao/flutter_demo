import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('有状态组件/StatefulWidget'),
        ),
        body: const MyApp(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    print(_count);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$_count', style: const TextStyle(fontSize: 40)),
          const SizedBox(height: 60),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              child: const Text('增加')
          )
        ],
      ),
    );
  }
}
