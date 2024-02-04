import 'dart:ffi';

import 'package:get/get.dart';

class LoginControler extends GetxController {

  bool showPasswordCheckbox = false;
  bool obscureText = true;

  void showPassword(bool value){
    showPasswordCheckbox = value!;
    obscureText = !showPasswordCheckbox;
    update();

  }

}