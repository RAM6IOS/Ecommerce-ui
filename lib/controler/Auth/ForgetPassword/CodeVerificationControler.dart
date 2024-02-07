import 'package:ecommerce_ui/View/Scren/Auth/ForgetPassword/NewPassword.dart';
import 'package:get/get.dart';

class CodeVerificationControler extends GetxController {
  bool onEditing = true;
  late String? code;


  void gotoNewPassword(){
    Get.offAll(
 () => NewPassword(),
);

  }
  void Completed(String value) {
     code = value;
      print("aaAAAAAAAA${code!}");

     update();
  }
  void Editing(bool value) {
    onEditing = value;
    update();
  }
}