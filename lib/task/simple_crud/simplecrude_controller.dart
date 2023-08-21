import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleCrudContoller extends GetxController {
  final txtNameEditingController = TextEditingController().obs;
  final txtSurNameEditingController = TextEditingController().obs;
  final txtUpdateNameEditingController = TextEditingController().obs;
  final txtUpdateSurNameEditingController = TextEditingController().obs;
  RxString gender = 'gender'.obs,
      male = 'male'.obs,
      feMale = 'feMale'.obs,
      genderUpdate = 'gender'.obs,
      maleUpdate = 'male'.obs,
      feMaleUpdate = 'feMale'.obs;
  RxBool isCricket = false.obs,
      isFootball = false.obs,
      isSinging = false.obs,
      isCricketUpdate = false.obs,
      isFootballUpdate = false.obs,
      isSingingUpdate = false.obs;
  RxDouble selectedAge = 0.0.obs, selectedAgeUpdate = 0.0.obs;
  RxList stream = ['science', 'commerce', 'art'].obs;
  RxList streamUpdate = ['science', 'commerce', 'art'].obs;
  RxString? selectStream, selectedStreamUpdate;
  RxInt selectedIndex = 0.obs;
  RxList selectedHobby = [].obs;
  RxList<Map<String, dynamic>> userData = <Map<String, dynamic>>[].obs;

  void genderMethod(String value) {
    gender.value = value;
  }

  void genderUpdateMethod(String value) {
    genderUpdate.value = value;
  }

  void cricketMethod(bool value) {
    isCricket.value = value;
  }

  void footballMethod(bool value) {
    isFootball.value = value;
  }

  void singingMethod(bool value) {
    isSinging.value = value;
  }

  void cricketUpdateMethod(bool value) {
    isCricketUpdate.value = value;
  }

  void footballUpdateMethod(bool value) {
    isFootballUpdate.value = value;
  }

  void singingUpdateMethod(bool value) {
    isSingingUpdate.value = value;
  }

  void ageMethod(double value) {
    selectedAge.value = value;
  }

  void ageUpdateMethod(double value) {
    selectedAgeUpdate.value = value;
  }

  void streamMethod(String value) {
    selectStream!.value = value;
  }

  void clearMethod() {
    txtNameEditingController.value.clear();
    txtSurNameEditingController.value.clear();
    gender.value = 'gender';
    isCricket.value = false;
    isFootball.value = false;
    isSinging.value = false;
    selectedAge.value = 0;
    //selectStream!.value = '';
  }

  void addUserData() {
    selectedHobby.clear();
    if (isCricket.value == true) {
      selectedHobby.add('Cricket');
    }
    if (isFootball.value == true) {
      selectedHobby.add('Football');
    }
    if (isSinging.value == true) {
      selectedHobby.add('Singing');
    }
    userData.add({
      'name': txtNameEditingController.value.text,
      'surName': txtSurNameEditingController.value.text,
      'age': selectedAge.value,
      'gender': gender.value,
      'hobby': List.from(selectedHobby.map((e) => e)),
      //'stream': selectStream,
    });
  }

  void clearUpdateMethod() {
    txtUpdateNameEditingController.value.clear();
    txtUpdateSurNameEditingController.value.clear();
    isCricketUpdate.value = false;
    isFootballUpdate.value = false;
    isSingingUpdate.value = false;
    selectedAgeUpdate.value = 0;
    //selectedStreamUpdate!.value = '';
  }

  void onTapUpdate() {
    selectedHobby.clear();
    txtUpdateNameEditingController.value.text =
        userData[selectedIndex.value]['name'];
    txtUpdateSurNameEditingController.value.text =
        userData[selectedIndex.value]['surName'];
    genderUpdate.value = userData[selectedIndex.value]['gender'];
    if (userData[selectedIndex.value]['hobby'].contains('Cricket')) {
      isCricketUpdate.value = true;
    }
    if (userData[selectedIndex.value]['hobby'].contains('Football')) {
      isFootballUpdate.value = true;
    }
    if (userData[selectedIndex.value]['hobby'].contains('Singing')) {
      isSingingUpdate.value = true;
    }
    selectedAgeUpdate.value = userData[selectedIndex.value]['age'];
    // selectedStreamUpdate = userData[selectedIndex.value]['stream'];
    //hobbyList = userData[selectedIndex.value]['hobby'].map((e) => e).toList();
  }

  void updateMethod() {
    selectedHobby.clear();
    userData.refresh();
    if (isCricketUpdate.value == true) {
      selectedHobby.add('Cricket');
    }
    if (isFootballUpdate.value == true) {
      selectedHobby.add('Football');
    }
    if (isSingingUpdate.value == true) {
      selectedHobby.add('Singing');
    }
    userData[selectedIndex.value]['name'] =
        txtUpdateNameEditingController.value.text;
    userData[selectedIndex.value]['surName'] =
        txtUpdateSurNameEditingController.value.text;
    userData[selectedIndex.value]['age'] = selectedAgeUpdate.value;
    userData[selectedIndex.value]['gender'] = genderUpdate.value;
    userData[selectedIndex.value]['hobby'] =
        List.from(selectedHobby.map((e) => e));
    // userData[selectedIndex.value]['stream'] = selectedStreamUpdate;
  }

  void updateButton(dynamic context) {
    Navigator.pop(context);
  }

  void cancleButton(dynamic context) {
    Navigator.pop(context);
  }

  void deleteButton(dynamic context, index) {
    userData.removeAt(index);
    userData.refresh();
    Navigator.pop(context);
  }

  void cancleDeleteButton(dynamic context) {
    userData.refresh();
    Navigator.pop(context);
  }
}
