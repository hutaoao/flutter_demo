import 'package:get/get.dart';
import '../pages/tabs/tabs.dart';
import '../pages/page1.dart';
import '../pages/page2.dart';
import '../pages/page3_2.dart';
import '../middleware/loginMiddleware.dart';

class AppPage {
  static final routers = [
    GetPage(name: '/', page: () => const NavigationExample()),
    GetPage(name: '/page1', page: () => const Page1()),
    GetPage(name: '/page2', page: () => Page2(aid: 123456),),
    /// 中间件
    GetPage(name: '/page3', page: () => Page3(), middlewares: [LoginMiddleware()]),
  ];
}
