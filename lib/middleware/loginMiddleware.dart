import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginMiddleware extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
    print('LoginMiddleware-----');
    print(route);
    // return null; //

    return const RouteSettings(name: '/'); // 匹配路由之前做操作
  }
}
