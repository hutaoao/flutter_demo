import 'package:flutter/material.dart';

class PageViewKeepAlive extends StatefulWidget {
  const PageViewKeepAlive({super.key});

  @override
  State<StatefulWidget> createState() => _PageViewKeepAliveState();
}

class _PageViewKeepAliveState extends State<PageViewKeepAlive> {
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
            return MyContainer(num: index);
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

class _MyContainerState extends State<MyContainer> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    print(widget.num);
    return Center(
      child: Text('第${widget.num + 1}屏', style: const TextStyle(fontSize: 30)),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  /// true - 表示缓存数据
  bool get wantKeepAlive => true;
}
