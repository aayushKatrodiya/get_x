import 'package:get/get.dart';

class FormController extends GetxController {
  RxString gender = ''.obs, male = 'Male'.obs, female = "Female".obs;
  RxBool isGender = false.obs, isMale = false.obs, isFemale = false.obs;
}
