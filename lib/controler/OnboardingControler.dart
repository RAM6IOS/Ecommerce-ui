import 'package:ecommerce_ui/Core/localization/localeControler.dart';
import 'package:ecommerce_ui/Core/services/OnboardingServices.dart';
import 'package:ecommerce_ui/View/Scren/Auth/SignUp.dart';
import 'package:ecommerce_ui/View/Scren/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingControler  extends GetxController {
     // Use it to control scrolling between pages, and to select the current page
  final PageController pageController = PageController(initialPage: 0);
  // The current page is tracked
  int currentPage = 0;

  bool showOnboarding = false ;

  MyLocaleController localeController = Get.find();
  MyServices services = Get.find();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration.zero, () {
    ShowOnboarding();
  });
  }

  void ShowOnboarding() async{
   if (services.sharedPreferences.getBool("showOnboarding") == true) {
    showOnboarding = services.sharedPreferences.getBool("showOnboarding")!;
    if (showOnboarding) {
      await Get.offAll(() => SignUp());
    } 
  }

  }
  void shangeOnboarding() {
   showOnboarding = true;
  services.sharedPreferences.setBool("showOnboarding", showOnboarding);
  print(services.sharedPreferences.getBool("showOnboarding"));
    update();
  }

  void CurrentPage(int page){
    currentPage = page ;
    update();
  }
  void NextPage(){
    pageController.nextPage(
      duration: const Duration(milliseconds: 500), 
      curve: Curves.ease
      );

  }
}