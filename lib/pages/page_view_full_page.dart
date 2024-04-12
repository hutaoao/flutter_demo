import 'package:flutter/material.dart';

class MyPageViewFullPage extends StatefulWidget {
  const MyPageViewFullPage({super.key});

  @override
  State<StatefulWidget> createState() => _MyPageViewFullPageState();
}

class _MyPageViewFullPageState extends State<MyPageViewFullPage> {
  List<Widget> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 10; i++) {
      list.add(Center(
        child: Text('第${i + 1}'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageViewFullPage', style: TextStyle(fontSize: 30)),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: list,
        onPageChanged: (int index) {
          print(index);
          if (index +1 == list.length) {
            setState(() {
              for (var i = 0; i < 10; i++) {
                list.add(Center(
                  child: Text('第--${i + 1}'),
                ));
              }
            });
          }
        },
      ));
  }
}
