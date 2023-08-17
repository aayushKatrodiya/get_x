import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/task/form/forn_controller.dart';

class FormUi extends StatelessWidget {
  const FormUi({super.key});

  @override
  Widget build(BuildContext context) {
    FormController formController = Get.find();
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70),
          Row(
            children: [
              const Text("Gender:=   "),
              Obx(
                () => Radio(
                  value: formController.male.value,
                  groupValue: formController.gender.value,
                  onChanged: (value) {
                    log("Gender:==>>    Male");
                    formController.gender.value = value.toString();
                  },
                ),
              ),
              const Text("Male"),
              Obx(
                () => Radio(
                  value: formController.female.value,
                  groupValue: formController.gender.value,
                  onChanged: (value) {
                    log("Gender:==>>   Female");
                    formController.gender.value = value.toString();
                  },
                ),
              ),
              const Text("Female"),
            ],
          ),
          Row(
            children: [
              const Text('Hobby :   '),
              Obx(
                () => Checkbox(
                  value: formController.isFreeFire.value,
                  onChanged: (value) {
                    log("Hobby:====>>>    FreeFire");
                    formController.isFreeFire.value = value!;
                  },
                ),
              ),
              const Text('FreeFire'),
              Obx(
                () => Checkbox(
                  value: formController.isBGMI.value,
                  onChanged: (value) {
                    log("Hobby:====>>>    BGMI");
                    formController.isBGMI.value = value!;
                  },
                ),
              ),
              const Text('BGMI'),
              Obx(
                () => Checkbox(
                  value: formController.isCOC.value,
                  onChanged: (value) {
                    log("Hobby:====>>>    COC");
                    formController.isCOC.value = value!;
                  },
                ),
              ),
              const Text('COC'),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              formController.isSubmited.value = true;
              formController.cleareMethod();
            },
            child: const Text("Submit"),
          ),
          Obx(
            () => formController.isSubmited.value == true
                ? Container(
                    height: 200,
                    width: 250,
                    color: Colors.yellow,
                    child: Column(
                      children: [
                        Text(formController.gender.value.toString()),
                        Text(formController.hobbyStored.toString()),
                      ],
                    ),
                  )
                : const SizedBox(),
          )
        ],
      ),
    );
  }
}
