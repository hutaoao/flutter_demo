import 'package:flutter/material.dart';
import 'routers/routers.dart';
import 'routers/routers_get.dart';
import 'package:get/get.dart';
import './binding/binding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        // 配置全局appBarTheme主题
        appBarTheme: const AppBarTheme(
          centerTitle: true, // android/iOS提现不一样
          foregroundColor: Colors.blue
        )
      ),
      debugShowCheckedModeBanner: false,
      // home: const NavigationExample(),
      /// 初始化路由
      initialRoute: '/',
      /// 2、配置 onGenerateRoute
      // onGenerateRoute: onGenerateRoute,
      /// Getx
      defaultTransition: Transition.rightToLeft,
      getPages: AppPage.routers,
      initialBinding: AllControllerBinding(), /// 全局绑定
    );
  }
}
