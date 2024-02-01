import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingControler  extends GetxController {
     // Use it to control scrolling between pages, and to select the current page
  final PageController pageController = PageController(initialPage: 0);
  // The current page is tracked
  int currentPage = 0;

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