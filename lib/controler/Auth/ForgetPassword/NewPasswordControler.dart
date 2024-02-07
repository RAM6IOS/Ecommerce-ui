import 'package:ecommerce_ui/View/Scren/Auth/ForgetPassword/SuccessResetPassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordControler extends GetxController {


  late TextEditingController  newpassword;

  late TextEditingController  resitpassword;

  void gotoSuccessResetPassword(){
    Get.offAll(
      SuccessResetPassword()
    );
  }

  @override
  void onInit(){
    newpassword = TextEditingController();
    resitpassword = TextEditingController();
    super.onInit();
  }


}