/// 列表组件 - ListView
library;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('ListView - 列表组件'),
      ),
      body: const MyList(),
    ),
  ));
}

// 垂直列表
// ListView 中水平列表时 Container高度自适应，垂直列表时 Container宽度自适应，
class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.horizontal, // 水平列表
              padding: const EdgeInsets.all(20),
              children: [
                Container(
                  width: 150,
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.red),
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            image: NetworkImage('https://qiniu.public.hutaoao.cn/invitation/1.jpg'),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      const Text('首页')
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.yellow),
                ),
                Container(
                  width: 150,
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.blueGrey),
                ),
                Container(
                  width: 150,
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.green),
                ),
                Container(
                  width: 150,
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.amber),
                ),
              ],
            )),
        Expanded(
          flex: 2,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
            children: [
              ListTile(
                leading: Image.network('https://qiniu.public.hutaoao.cn/invitation/1.jpg'),
                title: const Text('在 Flutter 中，高度不能直接使用百分比来设置'),
                subtitle: const Text('在 Flutter 中，高度不能直接使用百分比来设置'),
              ),
              const Divider(),
              ListTile(
                leading: Image.network('https://qiniu.public.hutaoao.cn/invitation/1.jpg'),
                title: const Text('在 Flutter 中，高度不能直接使用百分比来设置'),
                subtitle: const Text('在 Flutter 中，高度不能直接使用百分比来设置'),
              ),
              const Divider(),
              ListTile(
                title: const Text('在 Flutter 中，高度不能直接使用百分比来设置'),
                subtitle: const Text('在 Flutter 中，高度不能直接使用百分比来设置'),
                trailing: Image.network('https://qiniu.public.hutaoao.cn/invitation/1.jpg'),
              ),
              const Divider(),
              ListTile(
                title: const Text('在 Flutter 中，高度不能直接使用百分比来设置'),
                subtitle: const Text('在 Flutter 中，高度不能直接使用百分比来设置'),
                trailing: Image.network('https://qiniu.public.hutaoao.cn/invitation/1.jpg'),
              ),
              const Divider(),
              ListTile(
                title: const Text('在 Flutter 中，高度不能直接使用百分比来设置'),
                subtitle: const Text('在 Flutter 中，高度不能直接使用百分比来设置'),
                trailing: Image.network('https://qiniu.public.hutaoao.cn/invitation/1.jpg'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
