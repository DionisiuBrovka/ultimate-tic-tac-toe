import 'package:flutter/material.dart';

class GamePageController {
  final isGameStartNotifier = ValueNotifier<bool>(false);

  void startGame() {
    isGameStartNotifier.value = true;
  }
}
