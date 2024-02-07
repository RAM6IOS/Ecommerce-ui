
import 'package:ecommerce_ui/View/Widget/Onboarding/OnboardingButtons.dart';
import 'package:ecommerce_ui/View/Widget/Onboarding/OnboardingPages.dart';
import 'package:ecommerce_ui/View/Widget/Onboarding/indicator.dart';
import 'package:ecommerce_ui/controler/OnboardingControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: OnboardingControler(),
        builder: (controller) =>  Column(
        children: [
          Expanded(
            flex: 5,
             child: OnboardingPages(),
           ), 
          Indicator(),
 const SizedBox(height: 40.0), 
       OnboardingButtons(),       
         const SizedBox(height: 40.0),
        ],
      ), 
      )
    );
  }
}
