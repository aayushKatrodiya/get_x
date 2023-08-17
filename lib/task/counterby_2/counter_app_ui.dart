import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/task/counterby_2/counter_controller.dart';

class CounterBy2 extends StatelessWidget {
  const CounterBy2({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBy2Controller counterControllerBy1 = Get.find();
    CounterBy2Controller counterControllerBy2 = Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    counterControllerBy1.countBy1--;
                    log("${counterControllerBy1.countBy1}");
                  },
                  icon: const Icon(Icons.horizontal_rule),
                ),
                Obx(
                  () => Text(counterControllerBy1.countBy1.value.toString()),
                ),
                IconButton(
                  onPressed: () {
                    counterControllerBy1.countBy1++;
                    log("${counterControllerBy1.countBy1}");
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    counterControllerBy2.countBy2 -= 2;
                    log("${counterControllerBy2.countBy2}");
                  },
                  icon: const Icon(Icons.horizontal_rule),
                ),
                Obx(
                  () => Text(counterControllerBy2.countBy2.value.toString()),
                ),
                IconButton(
                  onPressed: () {
                    counterControllerBy2.countBy2 += 2;
                    log("${counterControllerBy2.countBy2}");
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
