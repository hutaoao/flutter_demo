/// Ios Android不同平台录音跳转风格不一样
// import 'package:flutter/material.dart';

/// 统一配置IOS路由跳转动画风格 - android和iOS使用同样风格的路由跳转
import 'package:flutter/cupertino.dart';
import '../pages/tabs/tabs.dart';
import '../pages/page1.dart';
import '../pages/page2.dart';
import '../pages/page3.dart';
import '../pages/login/step1.dart';
import '../pages/login/step2.dart';
import '../pages/login/step3.dart';
import '../pages/page_view.dart';
import '../pages/page_view_builder.dart';
import '../pages/page_view_full_page.dart';
import '../pages/page_view_swiper.dart';
import '../pages/page_view_keep_alive.dart';
import '../pages/page_view_keep_alive_2.dart';
import '../pages/key_demo/local_key.dart';
import '../pages/key_demo/global_key.dart';
import '../pages/key_demo/global_key2.dart';

/// 1、配置路由 可做权限配置
final Map routes = {
  '/': (context) => const NavigationExample(),
  '/page1': (context) => const Page1(),
  '/page2': (context) => Page2(aid: 123456),
  '/page3': (context, {arguments}) => Page3(arguments: arguments),
  '/loginStep1': (context) => const LoginStep1(),
  '/loginStep2': (context) => const LoginStep2(),
  '/loginStep3': (context) => const LoginStep3(),
  '/pageView': (context) => const MyPageView(),
  '/pageViewBuilder': (context) => const MyPageViewBuilder(),
  '/pageViewFullPage': (context) => const MyPageViewFullPage(),
  '/myPageViewSwiper': (context) => const MyPageViewSwiper(),
  '/pageViewKeepAlive': (context) => const PageViewKeepAlive(),
  '/pageViewKeepAlive2': (context) => const PageViewKeepAlive2(),
  '/myLocalKey': (context) => const MyLocalKey(),
  '/myGlobalKey': (context) => const MyGlobalKey(),
  '/myGlobalKey2': (context) => const MyGlobalKey2(),
};

var onGenerateRoute = (RouteSettings settings) {
  /// 统一处理 想当于一个中间件
  final String? name = settings.name; /// 命名路由名称
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    /// 判断参数是否为空
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = CupertinoPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }

  return null;
};
