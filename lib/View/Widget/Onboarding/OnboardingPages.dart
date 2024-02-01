import 'package:ecommerce_ui/Data/dataSource/Static/onboardingData.dart';
import 'package:ecommerce_ui/View/Widget/Onboarding/OnboardingPage.dart';
import 'package:ecommerce_ui/controler/OnboardingControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPages extends GetView<OnboardingControler> {

  @override
  Widget build(BuildContext context){
    return PageView.builder(
      controller: controller.pageController,
      itemCount: onboarding.length,
      onPageChanged: (int page) {
                // When the page changes, we update the current page
                controller.CurrentPage(page);
              },
      itemBuilder: (context, index) {
        return OnboardingPage(onboardingData: onboarding[index]);
      },
    );
  }
}