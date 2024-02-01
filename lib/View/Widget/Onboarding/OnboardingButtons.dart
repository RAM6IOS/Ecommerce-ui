import 'package:ecommerce_ui/View/Scren/SignUp.dart';
import 'package:ecommerce_ui/View/Widget/Onboarding/CustomButton.dart';
import 'package:ecommerce_ui/View/Widget/Onboarding/SkipButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class OnboardingButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Column(
              children: [
                  CustomButton(),
                  SkipButton()        
              ],
            );
  }
}