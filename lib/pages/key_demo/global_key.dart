import 'package:flutter/material.dart';

class MyGlobalKey extends StatefulWidget {
  const MyGlobalKey({super.key});

  @override
  State<StatefulWidget> createState() => _MyGlobalKeyState();
}

/// 状态的保存是通过判断 组件类型/key 是否一致，
/// GlobalKey：
/// globalKey.currentState 获取子组件的状态
/// globalKey.currentWidget 获取子组件的属性
/// globalKey.currentContext!.findRenderObject() 获取渲染的属性
class _MyGlobalKeyState extends State<MyGlobalKey> {
  final GlobalKey _globalKey1 = GlobalKey();
  final GlobalKey _globalKey2 = GlobalKey();
  final GlobalKey _globalKey3 = GlobalKey();

  List<Widget> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = [
      Box(key: _globalKey1, color: Colors.red),
      Box(key: _globalKey2, color: Colors.yellow),
      Box(key: _globalKey3, color: Colors.blue), // UniqueKey：唯一值 每次运行的时候会随机生成
    ];
  }

  @override
  Widget build(BuildContext context) {
    /// 判断屏幕是横屏还是竖屏
    /// Orientation.landscape（横屏）/Orientation.portrait（竖屏）
    /// 以下代码 由于屏幕旋转导致组件类型改变 所以状态得不到保存
    /// 使用 GlobalKey状态得以保存（组件类型不一样 元素的Key一致 状态得以保存）
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text('KeyDemo'),
      ),
      body: Center(
        child: orientation == Orientation.portrait
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              )
            : Row(mainAxisAlignment: MainAxisAlignment.center, children: list),
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
