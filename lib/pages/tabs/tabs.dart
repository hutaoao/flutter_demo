import 'package:flutter/material.dart';
import 'home.dart';
import 'shop.dart';
import 'message.dart';
import 'my.dart';
import 'add.dart';

class NavigationExample extends StatefulWidget {
  final int index;
  const NavigationExample({super.key, this.index = 0});

  @override
  State<StatefulWidget> createState() => _MyTabs();
}

class _MyTabs extends State<NavigationExample> {

  late int _currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.index;
  }

  final List _pages = const [
    Home(),
    Shop(),
    Add(),
    Message(),
    My(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar/Drawer', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://qiniu.public.hutaoao.cn/invitation/1.jpg'),
                          fit: BoxFit.cover
                        )
                    ),
                    child: Text('DrawerHeader'),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text('个人中心'),
              leading: ClipOval(
                child: Icon(Icons.home),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('系统设置'),
              leading: ClipOval(
                child: Icon(Icons.settings),
              ),
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('张三'),
              accountEmail: Text('zhangsan@goole.com'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://qiniu.public.hutaoao.cn/invitation/1.jpg'),
              ),
              otherAccountsPictures: [
                Image(image: NetworkImage('https://qiniu.public.hutaoao.cn/invitation/1.jpg')),
                Image(image: NetworkImage('https://qiniu.public.hutaoao.cn/invitation/1.jpg')),
              ],
            )
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: '订单'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: '发布'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: '消息'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
        ],
        type: BottomNavigationBarType.fixed,
        // 顶部有四个及以上tab需要配置
        iconSize: 30,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        selectedFontSize: 16,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      floatingActionButton: Container(
        width: 65,
        height: 65,
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
        child: ClipOval(
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                _currentIndex = 2;
              });
            },
            backgroundColor: _currentIndex == 2 ? Colors.amber[800] : Colors.blue,
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
