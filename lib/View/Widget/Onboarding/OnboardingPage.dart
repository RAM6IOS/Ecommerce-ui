import 'package:ecommerce_ui/Data/Model/onboardingModel.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  //Page orientation data
   final OnboardingModel onboardingData;
  OnboardingPage({ required this.onboardingData});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
        onboardingData.title,
          style:   const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 70.0),
        Image.asset(
        onboardingData.image,
          height: 250,
          width: 200,
        ),
         const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
             onboardingData.message,
            textAlign: TextAlign.center,
            style:  const TextStyle(fontSize: 16.0  ,height: 2),
          ),
        ),
      ],
    );
  }
}
