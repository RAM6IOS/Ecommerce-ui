import 'package:ecommerce_ui/Core/localization/localeControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingControler  extends GetxController {
     // Use it to control scrolling between pages, and to select the current page
  final PageController pageController = PageController(initialPage: 0);
  // The current page is tracked
  int currentPage = 0;

  MyLocaleController localeController = Get.find();

  @override
  void onInit() {
    super.onInit();
  
    // يتم استدعاء هذه الدالة عند إنشاء المتحكم (المكافئ ل initState في StatefulWidget)
    // يمكنك وضع التكويد الخاص بك هنا.
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