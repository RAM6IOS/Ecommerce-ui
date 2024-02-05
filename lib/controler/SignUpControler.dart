import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpControler extends GetxController {

  late TextEditingController email ;
  late TextEditingController password;
  late TextEditingController username ;
  late TextEditingController phone ;

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
    
    
    // يتم استدعاء هذه الدالة عند إنشاء المتحكم (المكافئ ل initState في StatefulWidget)
    // يمكنك وضع التكويد الخاص بك هنا.
  }


}