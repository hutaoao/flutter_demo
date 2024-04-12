import 'dart:async';

import 'package:flutter/material.dart';

class Swiper extends StatefulWidget {
  final double width;
  final double height;
  List<String> list = [];

  Swiper({super.key, this.width = double.infinity, this.height = 200, required this.list});

  @override
  State<StatefulWidget> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  int _currentIndex = 0;
  List<Widget> pageList = [];
  late PageController _pageController;
  late Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (var i = 0; i < widget.list.length; i++) {
      pageList.add(ImagePage(url: widget.list[i]));
    }

    _pageController = PageController(initialPage: 0);

    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      _pageController.animateToPage(
          (_currentIndex + 1) % widget.list.length,
          duration: const Duration(milliseconds: 200), curve: Curves.linear
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: widget.width,
          height: widget.height,
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index % pageList.length;
                });
              },
              itemCount: 100,
              itemBuilder: (context, index) {
                return pageList[index % pageList.length];
              }),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 5,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(pageList.length, (index) {
                return Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: _currentIndex == index ? Colors.red : Colors.grey,
                      // borderRadius: BorderRadius.circular(5) // 设置成圆
                      shape: BoxShape.circle // 设置成圆
                      ),
                );
              }).toList()),
        )
      ],
    );
  }
}

class ImagePage extends StatelessWidget {
  final String url;

  const ImagePage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.network(url, fit: BoxFit.cover),
    );
  }
}
