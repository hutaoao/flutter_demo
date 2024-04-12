import 'package:flutter/material.dart';

// 父组件
class MyGlobalKey2 extends StatefulWidget {
  const MyGlobalKey2({super.key});

  @override
  State<StatefulWidget> createState() => _MyGlobalKey2State();
}

/// 状态的保存是通过判断 组件类型/key 是否一致，
/// GlobalKey：
/// globalKey.currentState 获取子组件的状态
/// globalKey.currentWidget 获取子组件的属性
/// globalKey.currentContext!.findRenderObject() 获取渲染的属性
class _MyGlobalKey2State extends State<MyGlobalKey2> {
  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KeyDemo'),
      ),
      body: Center(
        child: Box(key: _globalKey, color: Colors.red),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// 1、获取子组件的状态  获取子组件的属性/方法
          var boxState = _globalKey.currentState as _BoxState;
          print(boxState._count);
          setState(() {
            boxState._count++;
          });
          boxState.run();

          /// 2、获取子 Widget 属性（了解）
          var boxWidget = _globalKey.currentWidget as Box;
          print(boxWidget.color); // MaterialColor(primary value: Color(0xfff44336))
          setState(() {
            /// 无法赋值
            // boxWidget.color = Colors.blue;
          });

          /// 3、获取子组件渲染属性
          var boxContext = _globalKey.currentContext!.findRenderObject() as RenderBox;
          print(boxContext.size); // Size(100.0, 100.0)
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// 自组件
class Box extends StatefulWidget {
  final Color color;

  const Box({super.key, required this.color});

  @override
  State<StatefulWidget> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;

  void run() {
    print('child run');
  }

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
