
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameController extends GetxController {
  // 타이머 시간
  Rx<DateTime> timer = DateTime(0).obs;

  // 조이스틱으로 움직이는 원(캐릭터) 위치
  var circle = Offset(0, 0).obs;

  void startTimer() {
    // 1밀리초마다 currentTime 값을 1밀리초씩 증가
    Timer.periodic(Duration(milliseconds: 1), (_) {
      timer.value = timer.value.add(Duration(milliseconds: 1));
    });
  }


  void startGame() {
    while(true) {

    }
  }
}
