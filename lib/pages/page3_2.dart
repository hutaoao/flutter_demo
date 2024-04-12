import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatefulWidget {
  Page3({super.key});

  @override
  State<StatefulWidget> createState() => _Page3State();
}


class _Page3State extends State<Page3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('${Get.arguments['title']}-----');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments['title']), // 获取属性
      ),
      body: const Center(
        child: Text('page3 page'),
      ),
    );
  }
}
