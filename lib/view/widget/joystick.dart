
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/joystick_controller.dart';

class Joystick extends GetView<JoystickController> {
  const Joystick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onPanStart: (details) {
          controller.center.value = details.localPosition;
          controller.movement.value = Offset(0, 0);
        },
        onPanUpdate: (details) {
          controller.updatePosition(details);
        },
        onPanEnd: (details) {
          controller.movement.value = Offset(0, 0);
        },
        child: CircleAvatar(
          radius: controller.radius,
          backgroundColor: Colors.grey[300],
          child: Transform.translate(
            offset: controller.movement.value,
            child: CircleAvatar(
              backgroundColor: Colors.grey[700],
            ),
          ),
        ),
      ),
    );
  }
}
