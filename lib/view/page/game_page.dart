
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/game_controller.dart';
import '../widget/joystick.dart';

class GamePage extends GetView<GameController> {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.startTimer();
    });
    return WillPopScope(
      onWillPop: () {
        controller.timer.value = DateTime(0);
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Obx(() => Text(
            '${controller.timer.value.minute.toString().padLeft(2, '0')}:${controller.timer.value.second.toString().padLeft(2, '0')}.${controller.timer.value.millisecond.toString().padLeft(3, '0')}'
          )),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Obx(
          () => Stack(
            children: [
              Positioned(
                top: 12,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all()
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: Get.width/2,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all()
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all()
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: Get.width/2,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all()
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all()
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
                child: Joystick(),
              ),
            ],
          )
        ),
      ),
    );
  }
}

