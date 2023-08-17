import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorChangerController extends GetxController {
  static List colorData = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.black,
    Colors.white,
    Colors.yellow,
    Colors.purple,
    Colors.amber,
    Colors.cyan,
  ];
  static bool isOldIndex = true;
  static int? oldIndex, newIndex;

  static void changeColor(int index) {
    if (isOldIndex == true) {
      oldIndex = index;
      isOldIndex = false;
    } else {
      newIndex = index;
      Color swapColor = colorData[newIndex!];
      colorData[newIndex!] = colorData[oldIndex!];
      colorData[oldIndex!] = swapColor;
      isOldIndex = true;
    }
  }
}
