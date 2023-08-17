import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colorchanger_controller.dart';

class ColorChangingContainer extends StatelessWidget {
  const ColorChangingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ColorChangerController colorChangerController = Get.find();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Wrap(
              children: List.generate(
                colorChangerController.colorData.length,
                (index) => GestureDetector(
                    onTap: () {
                      colorChangerController.changeColor(index);
                    },
                    child: Obx(
                      () => Card(
                        child: Container(
                          height: 120,
                          width: 120,
                          color: colorChangerController.colorData[index],
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
