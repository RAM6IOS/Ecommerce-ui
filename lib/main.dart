import 'dart:io';

import 'package:ecommerce_ui/Core/%20middleware%20/AtheMiddleware.dart';
import 'package:ecommerce_ui/Core/%20middleware%20/Mymiddleware.dart';
import 'package:ecommerce_ui/Core/function/exitshowdialog.dart';
import 'package:ecommerce_ui/Core/localization/locale.dart';
import 'package:ecommerce_ui/Core/localization/localeControler.dart';
import 'package:ecommerce_ui/Core/services/OnboardingServices.dart';
import 'package:ecommerce_ui/HomePage.dart';
import 'package:ecommerce_ui/View/Scren/Auth/ForgetPassword/CodeVerification.dart';
import 'package:ecommerce_ui/View/Scren/Auth/ForgetPassword/ForgetPassword.dart';
import 'package:ecommerce_ui/View/Scren/Auth/SignUp.dart';
import 'package:ecommerce_ui/View/Scren/Auth/login.dart';
import 'package:ecommerce_ui/View/Test/AtheMiddleware.dart';
import 'package:ecommerce_ui/View/Test/Home.dart';
import 'package:ecommerce_ui/View/Test/SettingServices.dart';
import 'package:ecommerce_ui/View/Test/Test.dart';
import 'package:ecommerce_ui/View/Scren/onboarding.dart';
import 'package:ecommerce_ui/View/Test/admin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';


late SharedPreferences sharedPreferences2 ; 
void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyLocaleController  localeController = Get.put(MyLocaleController());
    return GetMaterialApp(
      
      initialRoute: '/',
        getPages: [
          GetPage(name:'/', page:()=> OnboardingScreen() ,middlewares: [AtheMiddleware()]),
          GetPage(name:"/SignUp", page:()=> const SignUp())
        ],
        
      title: 'Flutter Demo',
      locale:localeController.intiaILang,
      translations: MyLocale(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      /*
      home: WillPopScope(child: MyTableWidget(), 
      
      onWillPop: (){
        exitshowdialog();
        return Future.value(false);
      }),
      */
      
    );
  }
}








