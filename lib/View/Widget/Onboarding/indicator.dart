import 'package:ecommerce_ui/Data/dataSource/Static/onboardingData.dart';
import 'package:ecommerce_ui/controler/OnboardingControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Indicator extends GetView<OnboardingControler> {
  @override
  Widget build(BuildContext context){
    return  SmoothPageIndicator(  
   controller: controller.pageController,  
   count:  onboarding.length,  
   axisDirection: Axis.horizontal,  
   effect: const ExpandingDotsEffect(  
      spacing:  8.0,  
      dotWidth:  24.0,  
      dotHeight:  10.0,  
      strokeWidth:  1.5,  
      dotColor:  Color.fromARGB(255, 163, 159, 159), 
      activeDotColor : Color.fromARGB(255, 41, 114, 224)
   ),  
) ;
  }
}