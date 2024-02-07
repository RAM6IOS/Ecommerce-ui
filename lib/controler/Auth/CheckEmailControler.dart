import 'package:ecommerce_ui/View/Scren/Auth/CodeVerificationSign.dart';
import 'package:ecommerce_ui/View/Scren/Auth/SuccessSignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmailControler extends GetxController {
  late TextEditingController email ;

  void gotoCodeVerification(){
    Get.offAll(
     
     CodeVerificationSign()

    );
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();

    // يتم استدعاء هذه الدالة عند إنشاء المتحكم (المكافئ ل initState في StatefulWidget)
    // يمكنك وضع التكويد الخاص بك هنا.
  }
}