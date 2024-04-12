import 'package:flutter/material.dart';

class MyLocalKey extends StatefulWidget {
  const MyLocalKey({super.key});

  @override
  State<StatefulWidget> createState() => _MyLocalKeyState();
}
/// 状态的保存是通过判断 组件类型/key 是否一致，
/// LocalKey：
/// 1、ValueKey(string | num)
/// 2、UniqueKey
/// 3、ObjectKey(object)
class _MyLocalKeyState extends State<MyLocalKey> {
  List<Widget> list = [
    const Box(key: ValueKey(1), color: Colors.red),
    const Box(key: ValueKey(2), color: Colors.yellow),
    Box(key: UniqueKey(), color: Colors.blue), // UniqueKey：唯一值 每次运行的时候会随机生成
  ];

  @override
  Widget build(BuildContext context) {
    /// 判断屏幕是横屏还是竖屏
    /// Orientation.landscape（横屏）/Orientation.portrait（竖屏）
    var orientation = MediaQuery
        .of(context)
        .orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text('KeyDemo'),
      ),
      body: Center(
        child: orientation == Orientation.portrait ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: list,
        ) : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: list
        ),
      ),
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              list.shuffle(); // shuffle：打乱list元素的顺序
            });
          },
          child: const Icon(Icons.refresh, color: Colors.white),
        ),
      ),
    );
  }
}

class Box extends StatefulWidget {
  final Color color;

  const Box({super.key, required this.color});

  @override
  State<StatefulWidget> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(widget.color)),
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Text('$_count', style: const TextStyle(fontSize: 30, color: Colors.white)),
      ),
    );
  }
}
