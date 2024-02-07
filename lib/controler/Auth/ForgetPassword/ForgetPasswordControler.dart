import 'package:ecommerce_ui/View/Scren/Auth/ForgetPassword/CodeVerification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {

  late TextEditingController email ;
  late TextEditingController password;

  void GotoCodeVerification(){
     Get.offAll(
 () => CodeVerification(),
);

  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
    
    
    // يتم استدعاء هذه الدالة عند إنشاء المتحكم (المكافئ ل initState في StatefulWidget)
    // يمكنك وضع التكويد الخاص بك هنا.
  }
  


}