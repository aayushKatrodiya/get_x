import 'package:get/get.dart';
import 'package:get_x/task/colorchnger/colorchanger_controller.dart';
import 'package:get_x/task/counterby_2/counter_controller.dart';
import 'package:get_x/task/crud/crud_controller.dart';
import 'package:get_x/task/form/forn_controller.dart';
import 'package:get_x/task/simple_crud/simplecrude_controller.dart';
import 'package:get_x/task/tictactoi/tictac_controller.dart';
import 'package:get_x/teaching/counterapp_controller.dart';

class InitController {
  static void get getAllController {
    Get.put(CounterController());
    Get.put(CounterBy2Controller());
    Get.put(FormController());
    Get.put(ColorChangerController());
    Get.put(TicTacController());
    Get.put(CrudController());
    Get.put(SimpleCrudContoller());
  }
}
