import 'package:ecommerce_ui/Core/services/OnboardingServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingControler  extends GetxController {
     // Use it to control scrolling between pages, and to select the current page
  final PageController pageController = PageController(initialPage: 0);
  // The current page is tracked
  int currentPage = 0;

  bool showOnboarding = false ;

  
  MyServices services = Get.find();

  @override
  void onInit() {
    super.onInit();
  }
  // Function to change onboarding status and navigate to SignUp screen
  void changeOnboarding() {
   services.sharedPreferences.setString("role" ,"SignUp");
    Get.offAllNamed("/SignUp");
    update();
  }

// تحديث الصفحة الحالية
  void CurrentPage(int page){
    currentPage = page ;
    update();
  }
  // التبديل إلى الصفحة التالية
  void NextPage(){
    pageController.nextPage(
      duration: const Duration(milliseconds: 500), 
      curve: Curves.ease
      );

  }
}