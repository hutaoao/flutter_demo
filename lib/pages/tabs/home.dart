import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // 生命周期 - 组件初始化
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 8, vsync: this);

    // 监听_tabController改变事件
    _tabController.addListener(() {
      // print(_tabController.index); // 会获取两次
      if (_tabController.index == _tabController.animation?.value) {
        print(_tabController.index);
      }
    });
  }

  // 生命周期 - 组件销毁
  @override
  void dispose() {
    super.dispose();

    _tabController.dispose();
  }

  _handleTap(v) {
    print('$v-----');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          title: SizedBox(
            height: 30,
            child: TabBar(
              onTap: _handleTap,
              // 只能监听点击事件 无法监听滑动事件
              labelStyle: const TextStyle(fontSize: 16),
              isScrollable: true,
              controller: _tabController,
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(child: Text('tab1')),
                Tab(child: Text('tab2')),
                Tab(child: Text('tab3')),
                Tab(child: Text('tab4')),
                Tab(child: Text('tab5')),
                Tab(child: Text('tab6')),
                Tab(child: Text('tab7')),
                Tab(child: Text('tab8')),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('tab1 内容'),
          Text('tab2 内容'),
          Text('tab3 内容'),
          Text('tab4 内容'),
          Text('tab5 内容'),
          Text('tab6 内容'),
          Text('tab7 内容'),
          Text('tab8 内容'),
        ],
      ),
    );
  }
}
