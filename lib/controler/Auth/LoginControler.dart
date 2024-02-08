import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginControler extends GetxController {
  bool showPasswordCheckbox = false;
  bool obscureText = true;
  late TextEditingController email ;
  late TextEditingController password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your Email';
  } else if (value.length < 4) {
    return 'Please enter a valid email with at least 5 characters';
  } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
          .hasMatch(value)) {
    return 'Please enter a valid email address';
  }
  return null;
}
String? validatepasswordl(String? value) {
 if (value == null || value.isEmpty) {
    return 'Please enter your password';
  } else if (value.length < 6) {
    return 'Please enter a valid password with at least 6 characters';
  }
  return null;
}
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
    
    
    // يتم استدعاء هذه الدالة عند إنشاء المتحكم (المكافئ ل initState في StatefulWidget)
    // يمكنك وضع التكويد الخاص بك هنا.
  }
  void showPassword(bool value){
    showPasswordCheckbox = value!;
    obscureText = !showPasswordCheckbox;
    update();

  }

}