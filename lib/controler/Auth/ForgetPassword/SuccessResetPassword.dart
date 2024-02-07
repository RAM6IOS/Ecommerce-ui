import 'package:ecommerce_ui/View/Scren/Auth/login.dart';
import 'package:get/get.dart';

class SuccessResetPasswordCN extends GetxController {



  void gotoLogin(){

    Get.offAll(
      Login()
    );
  }
}