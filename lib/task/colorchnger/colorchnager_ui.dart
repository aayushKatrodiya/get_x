import 'package:flutter/material.dart';
import 'colorchanger_controller.dart';

class ColorChangingContainer extends StatelessWidget {
  const ColorChangingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Wrap(
              children: List.generate(
                ColorChangerController.colorData.length,
                (index) => GestureDetector(
                  onTap: () {
                    ColorChangerController.changeColor(index);
                  },
                  child: Card(
                    child: Container(
                      height: 120,
                      width: 120,
                      color: ColorChangerController.colorData[index],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
