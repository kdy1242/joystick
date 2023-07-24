
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/joystick_controller.dart';
import 'game_page.dart';
import 'ranking_page.dart';

class MainPage extends GetView<JoystickController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('게임입니다'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Get.to(() => GamePage());
              }, 
              child: Text('께임', style: TextStyle(fontSize: 30)),
            ),
            ElevatedButton(
              onPressed: (){
                Get.to(() => RankingPage());
              },
              child: Text('랭킹', style: TextStyle(fontSize: 30)),
            )
          ],
        ),
      ),
    );
  }
}
