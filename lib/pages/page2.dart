import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widget/myDialog.dart';

class Page2 extends StatefulWidget {
  final String title;
  int aid;

  Page2({super.key, this.title = 'page2页面', required this.aid});

  @override
  State<StatefulWidget> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.aid);
  }

  void _alertDialog() async {
    var result = await showDialog(
        context: context,
        barrierDismissible: false, // 点击灰色背景是否关闭
        builder: (context) {
          return AlertDialog(
            title: const Text('警告'),
            content: const Text('是否要删除？'),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop('ok');
              }, child: const Text('确定')),
              TextButton(
                  onPressed: () {
                    // 关闭 AlertDialog
                    Navigator.of(context).pop('cancel');
                  },
                  child: const Text('取消'))
            ],
          );
        });
    print(result);
  }

  void _simpleDialog() async {
    var result = await showDialog(context: context, builder: (context) {
      return SimpleDialog(
        title: const Text('请选择课目'),
        children: [
          SimpleDialogOption(
              onPressed: () {
                print('语文');
                Navigator.pop(context, '选择语文');
              },
              child: const Text('语文')
          ),
          const Divider(),
          const SimpleDialogOption(child: Text('数学')),
          const SimpleDialogOption(child: Text('英语')),
          const SimpleDialogOption(child: Text('历史')),
        ],
      );
    });
    print(result);
  }

  void _modelBottomDialog() async {
    var result = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 300,
          child: Column(
            children: [
              ListTile(
                title: const Text('分享'),
                onTap: () {
                  print('分享');
                  Navigator.pop(context, '分享//');
                }
              ),
              const ListTile(title: Text('收藏')),
              const ListTile(title: Text('取消')),
            ],
          ),
        );
      }
    );
    print(result);
  }

  void _toast() {
    Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
    );
  }

  void _myDialog() async {
    var result = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
      return MyDialog(
        title: '标题',
        content: '内容',
        onClose: () {
          print('close');
          Navigator.pop(context, 'is close');
        },
      );
    });
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // 获取属性
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: _alertDialog, child: const Text('alertDialog')),
            ElevatedButton(onPressed: _simpleDialog, child: const Text('simpleDialog')),
            ElevatedButton(onPressed: _modelBottomDialog, child: const Text('modelBottomDialog')),
            ElevatedButton(onPressed: _toast, child: const Text('toast')),
            ElevatedButton(onPressed: _myDialog, child: const Text('myDialog')),
          ],
        ),
      ),
    );
  }
}
