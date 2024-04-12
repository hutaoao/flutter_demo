import 'package:flutter/material.dart';
import '../tools/keepAliveWrapper.dart';

class PageViewKeepAlive2 extends StatefulWidget {
  const PageViewKeepAlive2({super.key});

  @override
  State<StatefulWidget> createState() => _PageViewKeep2AliveState();
}

class _PageViewKeep2AliveState extends State<PageViewKeepAlive2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageViewKeepAlive'),
      ),
      body: PageView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return KeepAliveWrapper(child: MyContainer(num: index));
          }),
    );
  }
}

// 自定义组件
class MyContainer extends StatefulWidget {
  final int num;

  const MyContainer({super.key, required this.num});

  @override
  State<StatefulWidget> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    print(widget.num);
    return Center(
      child: Text('第${widget.num + 1}屏', style: const TextStyle(fontSize: 30)),
    );
  }
}
