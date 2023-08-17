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
              Radio(
                value: formController.male.value.obs,
                groupValue: formController.gender,
                onChanged: (value) {
                  formController.gender = value!;
                },
              ),
              const Text("Male"),
              Radio(
                value: formController.female.value.obs,
                groupValue: formController.gender.value.obs,
                onChanged: (value) {
                  formController.gender = value!;
                },
              ),
              const Text("Female"),
            ],
          ),
          Row(
            children: [
              const Text("Hobby:=    "),
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              const Text("FreeFire"),
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              const Text("BGMI"),
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              const Text("COC"),
            ],
          ),
        ],
      ),
    );
  }
}
