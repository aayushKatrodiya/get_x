import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorChangerController extends GetxController {
  RxList colorData = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.black,
    Colors.white,
    Colors.yellow,
    Colors.purple,
    Colors.amber,
    Colors.cyan,
  ].obs;
  RxBool isOldIndex = true.obs;
  RxInt? oldIndex, newIndex;

  void changeColor(int index) {
    if (isOldIndex.value == true) {
      oldIndex = index.obs;
      isOldIndex = false.obs;
    } else {
      newIndex = index.obs;
      Color swapColor = colorData[newIndex!.value];
      colorData[newIndex!.value] = colorData[oldIndex!.value];
      colorData[oldIndex!.value] = swapColor;
      isOldIndex = true.obs;
    }
  }
}
