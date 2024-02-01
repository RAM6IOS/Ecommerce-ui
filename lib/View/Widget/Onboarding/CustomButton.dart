import 'package:ecommerce_ui/View/Scren/SignUp.dart';
import 'package:ecommerce_ui/controler/OnboardingControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return GetBuilder(
       init: OnboardingControler(),
        builder: (controller) =>   Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 81, 137, 236),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: 350,
      height: 50,
      margin: EdgeInsets.only(bottom: 10),
      child: MaterialButton(
        onPressed: () {
            if (controller.currentPage != 3) {
  controller.NextPage();
} else {
   Get.offAll(
    SignUp(),
);
}
          },
        child: Text(
          (controller.currentPage != 0) ? "Continue" : "Let Go",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
    );
  }
}