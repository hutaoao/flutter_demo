import 'dart:async';

import 'package:flutter/material.dart';
import '../widget/swiper.dart';

class MyPageViewSwiper extends StatefulWidget {
  const MyPageViewSwiper({super.key});

  @override
  State<StatefulWidget> createState() => _MyPageViewSwiperState();
}

class _MyPageViewSwiperState extends State<MyPageViewSwiper> {
  List<String> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = [
      'https://qiniu.public.hutaoao.cn/invitation/1.jpg',
      'https://qiniu.public.hutaoao.cn/invitation/2.jpg',
      'https://qiniu.public.hutaoao.cn/invitation/3.jpg',
    ];

    /// 创建定时器
    Timer t = Timer.periodic(const Duration(seconds: 3), (timer) {
      print('object');
      /// 取消定时器
      // timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageViewSwiper'),
      ),
      body: Swiper(width: 300, height: 150, list: list,),
    );
  }
}

