import 'package:ecommerce_ui/Core/services/OnboardingServices.dart';
import 'package:ecommerce_ui/View/Scren/Auth/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mymiddleware extends GetMiddleware {
  

  MyServices services = Get.find();

  @override
  RouteSettings ? redirecat(String? route) {

    if(services.sharedPreferences.getString('role') == '1') return const  RouteSettings(name:'/SignUp');
    

  }
}