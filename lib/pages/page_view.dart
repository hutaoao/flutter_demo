import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<StatefulWidget> createState() => _PageViewState();
}

class _PageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical, // 滑动方向 - 默认水平
        children: const [
          Center(
            child: Text('第1屏', style: TextStyle(fontSize: 30)),
          ),
          Center(
            child: Text('第2屏', style: TextStyle(fontSize: 30)),
          ),
          Center(
            child: Text('第3屏', style: TextStyle(fontSize: 30)),
          ),
          Center(
            child: Text('第4屏', style: TextStyle(fontSize: 30)),
          ),
          Center(
            child: Text('第5屏', style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }
}
