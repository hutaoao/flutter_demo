import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../page1.dart';
import '../page2.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<StatefulWidget> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    goPage1() {
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
        return const Page1();
      }));
    }

    goPage2() {
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
        return Page2(title: 'hello flutter', aid: 1234);
      }));
    }

    return Center(
      child: ListView(
        children: [
          ElevatedButton(onPressed: goPage1, child: const Text('普通路由跳转')),
          ElevatedButton(onPressed: goPage2, child: const Text('普通路由跳转/传值')),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page2');
            },
            child: const Text('命名路由跳转')),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page3',
                  arguments: {'title': 'hello 你好', 'aid': 123});
            },
            child: const Text('命名路由跳转/传值')
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/page3', arguments: {'title': 'Getx 你好', 'aid': 321});
              },
              child: const Text('Get命名路由跳转/传值')
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pageView');
            },
            child: const Text('PageView演示')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageViewBuilder');
              },
              child: const Text('PageViewBuilder演示')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageViewFullPage');
              },
              child: const Text('PageViewFullPage演示')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/myPageViewSwiper');
              },
              child: const Text('pageViewSwiper演示')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageViewKeepAlive');
              },
              child: const Text('pageViewKeepAlive演示')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageViewKeepAlive2');
              },
              child: const Text('pageViewKeepAlive2演示')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/myLocalKey');
              },
              child: const Text('myLocalKey演示')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/myGlobalKey');
              },
              child: const Text('myGlobalKey演示')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/myGlobalKey2');
              },
              child: const Text('myGlobalKey2演示')
          ),
        ],
      ),
    );
  }
}
