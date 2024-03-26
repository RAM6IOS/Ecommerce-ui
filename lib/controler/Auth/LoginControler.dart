import 'dart:ffi';

import 'package:ecommerce_ui/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginControler extends GetxController {
  bool showPasswordCheckbox = false;
  bool obscureText = true;
  late TextEditingController email ;
  late TextEditingController password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


void gotohome(){
if (formKey.currentState != null && formKey.currentState!.validate()) {
  Get.offAll(()=> HomePage());
}
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