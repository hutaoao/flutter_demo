import 'package:flutter/material.dart';
import 'package:get/get.dart';

class My extends StatefulWidget {
  const My({super.key});

  @override
  State<StatefulWidget> createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('my page', style: TextStyle(fontSize: 30)),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/loginStep1');
              /// Get
              Get.toNamed('/loginStep1');
            },
            child: const Text('下一步')
          ),
          ElevatedButton(
              onPressed: () {
                /// defaultDialog
                Get.defaultDialog(
                  title: '提示?',
                  content: const Text('你确定要删除吗'),
                  confirm: ElevatedButton(
                      onPressed: () {
                        print('确定');
                        /// 关闭
                        Navigator.of(context).pop();
                      },
                      child: const Text('确定')
                  ),
                  cancel:  ElevatedButton(
                      onPressed: () {
                        print('取消');
                        /// 关闭
                        Get.back();
                      },
                      child: const Text('取消')
                  ),
                );
              },
              child: const Text('Getx defaultDialog')),
          ElevatedButton(
            /// snackbar
              onPressed: () {
                Get.snackbar('提示', '我是提示内容', snackPosition: SnackPosition.BOTTOM);
              },
              child: const Text('Getx snackbar')
          ),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                    Container(
                      height: 200,
                      color: Get.isDarkMode ? Colors.black: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('白天模式', style: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black)),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                              Get.back();
                            },
                          ),
                          ListTile(
                            title: Text('夜晚模式', style: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black)),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                              Get.back();
                            },
                          )
                        ],
                      ),
                    )
                );
              },
              child: const Text('Getx bottomSheet切换主题')
          )
        ],
      ),
    );
  }
}
