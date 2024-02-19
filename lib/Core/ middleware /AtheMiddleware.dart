import 'package:ecommerce_ui/Core/services/OnboardingServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  AtheMiddleware extends GetMiddleware {
    MyServices services = Get.find();
  @override
  RouteSettings? redirect(String? route){
    if (services.sharedPreferences.getString('role')  == 'SignUp') return const RouteSettings(name: "/SignUp");
  }

}