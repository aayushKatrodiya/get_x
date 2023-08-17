import 'package:get/get.dart';

class FormController extends GetxController {
  RxString gender = ''.obs, male = 'Male'.obs, female = "Female".obs;
  RxList<String> hobbyName = ["FreeFire", "BGMI", "PUBG"].obs;
}
