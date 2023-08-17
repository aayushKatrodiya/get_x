import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/teaching/counterapp_controller.dart';

class CounterAppUiDemo extends StatelessWidget {
  const CounterAppUiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.find();
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text(counterController.count.value.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.count++;
          log("${counterController.count}");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
