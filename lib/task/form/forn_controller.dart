import 'package:get/get.dart';

class FormController extends GetxController {
  RxString gender = ''.obs, male = 'Male'.obs, female = "Female".obs;
  RxList hobbyStored = [].obs;
  RxList<Map<String, dynamic>> storer = <Map<String, dynamic>>[].obs;
  RxBool isFreeFire = false.obs,
      isBGMI = false.obs,
      isCOC = false.obs,
      isSubmited = false.obs;

  void userData() {
    isFreeFire.value == true
        ? hobbyStored.add("FreeFire")
        : hobbyStored.remove("FreeFIre");

    isBGMI.value == true ? hobbyStored.add("BGMI") : hobbyStored.remove("BGMI");

    isCOC.value == true ? hobbyStored.add("COC") : hobbyStored.remove("COC");
    cleareMethod();
  }

  void cleareMethod() {
    hobbyStored.clear();
  }
}
