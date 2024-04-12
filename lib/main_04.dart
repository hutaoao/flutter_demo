/// 图片组件
/// 本地图片
/// 远程图片
/// 图片剪切
library;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('图片组件'),
        backgroundColor: Colors.green,
      ),
      body: const Column(
        children: [SizedBox(height: 20), MyImage(), MyImage2(), MyImage3(), MyImage4()],
      ),
    ),
  ));
}

/// 网络图片
class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 100,
        decoration: const BoxDecoration(color: Colors.blue),
        child: Image.network(
          'https://qiniu.public.hutaoao.cn/invitation/1.jpg',
          alignment: Alignment.topRight,
          // fit: BoxFit.cover,
          // repeat: ImageRepeat.repeatY, // 平铺
        ),
      ),
    );
  }
}

/// 圆角图片 - 通过背景图实现
class MyImage2 extends StatelessWidget {
  const MyImage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.fromLTRB(0, 50, 0, 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 2, color: Colors.green),
          image: const DecorationImage(
              image: NetworkImage(
                'https://qiniu.public.hutaoao.cn/invitation/1.jpg',
              ),
              fit: BoxFit.cover)),
    );
  }
}

/// 圆角图片 - ClipOval
class MyImage3 extends StatelessWidget {
  const MyImage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.network(
          'https://qiniu.public.hutaoao.cn/invitation/1.jpg',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

/// 本地图片
class MyImage4 extends StatelessWidget {
  const MyImage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.red)),
      child: Image.asset('images/image.jpg', fit: BoxFit.cover),
    );
  }
}
