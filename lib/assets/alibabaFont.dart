import 'package:flutter/material.dart';

class AliIcon {
  static const IconData book = IconData(
      0xf00a1, // 前面需要加 0x
      fontFamily: 'MyCustomerIcon', // 自体名
      matchTextDirection: true
  );
  static const IconData weixin = IconData(
      0xf0106,
      fontFamily: 'MyCustomerIcon',
      matchTextDirection: true
  );
  static const IconData baohuhaoma = IconData(
      0xe621,
      fontFamily: 'FlutterIcon',
      matchTextDirection: true
  );
  static const IconData zhuanshuguwen = IconData(
      0xe622,
      fontFamily: 'FlutterIcon',
      matchTextDirection: true
  );
}
