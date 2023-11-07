import 'package:confetti/confetti.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

class EndViewController extends GetxController {
  bool legyenKonfettiEso = false;
  ConfettiController confettiController = ConfettiController();

  @override
  void onInit() {
    super.onInit();
    confettiController.play();
  }
}