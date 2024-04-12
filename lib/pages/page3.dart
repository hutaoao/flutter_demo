import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  Map arguments;

  Page3({super.key, required this.arguments});

  @override
  State<StatefulWidget> createState() => _Page3State();
}


class _Page3State extends State<Page3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments['title']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.arguments['title']), // 获取属性
      ),
      body: const Center(
        child: Text('page3 page'),
      ),
    );
  }
}
