
import 'package:ecommerce_ui/View/Scren/Auth/CodeVerificationSign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpControler extends GetxController {
  late TextEditingController email ;
  late TextEditingController password;
  late TextEditingController username ;
  late TextEditingController phone ;
  bool showPasswordCheckbox = false;
  bool obscureText = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  

  void showPassword(bool value){
    showPasswordCheckbox = value!;
    obscureText = !showPasswordCheckbox;
    update();

  }
  void gotoCheckEmail(){
    // Add a condition to check email verification status before navigation
     if (formKey.currentState != null && formKey.currentState!.validate()) {
       Get.offAll(() => CodeVerificationSign());
     }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    
    super.onInit();

  }
  
}