import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const BarExample(),
      debugShowCheckedModeBanner: false, // 隐藏 debug 条
    );
  }
}

class BarExample extends StatefulWidget {
  const BarExample({super.key});

  @override
  State<StatefulWidget> createState() => _BarState();
}

class _BarState extends State<BarExample> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  // 声明周期函数：组件初始化时候触发
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            print('left');
          },
        ),
        title: const Text('AppBar Demo', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              print('search');
            },
          ),
          IconButton(
            icon: const Icon(Icons.more, color: Colors.white),
            onPressed: () {
              print('more');
            },
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.blue,
          indicatorWeight: 5,
          indicatorSize: TabBarIndicatorSize.tab,
          controller: _tabController,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.white,
          tabs: const [
            Tab(child: Text('关注')),
            Tab(child: Text('热门')),
            Tab(child: Text('视频')),
            Tab(child: Text('视频')),
            Tab(child: Text('视频')),
            Tab(child: Text('视频')),
            Tab(child: Text('视频')),
            Tab(child: Text('视频')),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('我是关注列表'),
          Text('我是热门列表'),
          Text('我是视频列表'),
          Text('我是视频列表'),
          Text('我是视频列表'),
          Text('我是视频列表'),
          Text('我是视频列表'),
          Text('我是视频列表'),
        ],
      ),
    );
  }
}
