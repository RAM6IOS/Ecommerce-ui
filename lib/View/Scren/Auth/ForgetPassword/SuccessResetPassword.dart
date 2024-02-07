import 'package:ecommerce_ui/View/Widget/Auth/custombuttons.dart';
import 'package:ecommerce_ui/controler/Auth/ForgetPassword/SuccessResetPassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
const SuccessResetPassword({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
      SuccessResetPasswordCN controler = Get.put(SuccessResetPasswordCN());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
       // backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text("Success Reset Password")
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: Colors.blue,
          )),
          Text("congratulations",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 30)),
          Text("Password has been reset successfully"),
          const Spacer(),
         Custombuttons(titelbuttons: 'Log In',onPressed: () {
          controler.gotoLogin();
    }, ),
          const SizedBox(height: 30)
        ]),
      ),
    );
  }
}