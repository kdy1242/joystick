import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/game_controller.dart';
import 'controller/joystick_controller.dart';
import 'view/page/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => JoystickController(), fenix: true);
        Get.lazyPut(() => GameController(), fenix: true);
      }),
      home: MainPage(),
    );
  }
}
