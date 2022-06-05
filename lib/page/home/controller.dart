import 'package:get/get.dart';

class Controller extends GetxController {
  String fruit = 'unknown';
  void changeFruid(String newFruit) {
    fruit = newFruit;
    update();
  }
}
