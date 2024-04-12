import 'package:flutter/material.dart';

class MyPageViewBuilder extends StatefulWidget {
  const MyPageViewBuilder({super.key});

  @override
  State<StatefulWidget> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<MyPageViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
      ),
      body: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Center(
            child: Text('pageViewBuilder-${index+1}', style: const TextStyle(fontSize: 30)),
          );
        }
      ),
    );
  }
}
