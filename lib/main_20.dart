import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card组件-图文列表'),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

/// ClipOval/CircleAvatar 圆形图片
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network('https://qiniu.public.hutaoao.cn/invitation/1.jpg', fit: BoxFit.cover)
              ),
              ListTile(
                title: const Text('xxxxxxx'),
                subtitle: const Text('xxxxxxxx'),
                leading: ClipOval(
                  child: Image.network('https://qiniu.public.hutaoao.cn/invitation/1.jpg', fit: BoxFit.cover, width: 40, height: 40,),
                ),
              )
            ],
          ),
        ),
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network('https://qiniu.public.hutaoao.cn/invitation/1.jpg', fit: BoxFit.cover)
              ),
              const ListTile(
                title: Text('xxxxxxx'),
                subtitle: Text('xxxxxxxx'),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://qiniu.public.hutaoao.cn/invitation/1.jpg'),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
