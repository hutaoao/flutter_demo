/// Align组件
library;

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Align组件'),
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

    return Container(
      width: 200,
      height: 200,
      // alignment: Alignment.centerRight,
      color: Colors.red,
      child: const Align(
        alignment: Alignment(-1, 1),
        child: Text('hello'),
      ),
    );
  }
}
