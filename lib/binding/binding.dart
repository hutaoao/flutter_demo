import 'package:get/get.dart';
import '../controller/counter.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CounterController());
  }
}
