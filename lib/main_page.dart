
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'joystick_controller.dart';

class MainPage extends GetView<JoystickController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ㅋㅋ')),
      body: Center(
        child: Obx(() {
          return Column(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Transform.translate(
                          offset: controller.circle.value,
                          child: CircleAvatar(backgroundColor: Colors.green)
                      ),
                    ),
                    Positioned(
                      left: 40,
                      bottom: 50,
                      child: GestureDetector(
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
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
