import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'joystick_controller.dart';
import 'main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => JoystickController(), fenix: true);
      }),
      home: MainPage(),
    );
  }
}
