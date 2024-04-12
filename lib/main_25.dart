import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('搜索页布局'),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [
            Text('搜索', style: Theme.of(context).textTheme.titleLarge)
          ],
        ),
        const Divider(),
        Wrap(
          spacing: 10,
          children: [
            MyButton('按钮', onPressed: () {}),
            MyButton('按钮1', onPressed: () {}),
            MyButton('按钮12', onPressed: () {}),
            MyButton('按钮123', onPressed: () {}),
            MyButton('按钮1234', onPressed: () {}),
            MyButton('按钮12345', onPressed: () {}),
            MyButton('按钮123456', onPressed: () {}),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Text('历史记录', style: Theme.of(context).textTheme.titleLarge)
          ],
        ),
        const Divider(),
        const Column(
          children: [
            ListTile(title: Text('男装')),
            ListTile(title: Text('手机')),
            ListTile(title: Text('电脑')),
          ],
        ),
        const SizedBox(height: 50),
        OutlinedButton.icon(
          style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(
              Colors.grey
            )
          ),
          onPressed: () {},
          icon: const Icon(Icons.delete),
          label: const Text('清空历史记录')
        )
      ],
    );
  }
}

/// 自定义按钮
class MyButton extends StatelessWidget {
  String text;
  void Function()? onPressed;

  MyButton(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: const MaterialStatePropertyAll(Colors.black),
          backgroundColor: const MaterialStatePropertyAll(Colors.grey),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
            )
          )
        ),
        child: Text(text),
      ),
    );
  }
}
