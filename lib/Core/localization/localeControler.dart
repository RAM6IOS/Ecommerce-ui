
import 'package:ecommerce_ui/Core/services/OnboardingServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLocaleController extends GetxController {

   late Locale intiaILang;
   bool showDialog = false;

   MyServices services = Get.find();

  @override
  void onInit() {
    super.onInit();
    _loadSavedLang();
    showDialo();
  print(showDialog);
    
  }
  
   void showDialo() async{
   if (services.sharedPreferences.getBool("showDialog") != null) {
    showDialog = services.sharedPreferences.getBool("showDialog")!;
    if (!showDialog) {
      Future.delayed(const Duration(seconds: 2), () {
      LanguageDialog();
    });
       
    } 
  }

  }
  void showDialoglang() {
    showDialog = true ;
  services.sharedPreferences.setBool("showDialog", showDialog);
  print(services.sharedPreferences.getBool("showDialog"));
    update();
  }
  void _loadSavedLang() {
    String? savedLang = services.sharedPreferences.getString("lang");
    if (savedLang != null) {
      intiaILang = Locale(savedLang);
    } else {
      intiaILang = Get.deviceLocale!;
    }
    update();
  }

  void changelang(String codelang) {
    Locale locale = Locale(codelang);
    services.sharedPreferences.setString("lang", codelang);

    Get.updateLocale(locale);
    update();
  }
  
  LanguageDialog() {
    Get.defaultDialog(
       backgroundColor:Color.fromARGB(255, 252, 248, 248),
      title: "2".tr ,
      content: Container(
        child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              changelang('ar');
             showDialoglang();
             // services.sharedPreferences.getBool("showDialog");
              print(showDialog);
              // قم بتغيير اللغة إلى العربية
              Get.back();
            },
            child:const Text('العربية' ,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
          ElevatedButton(
            onPressed: () {
               changelang('en');
                showDialoglang();
                print(showDialog);
              // قم بتغيير اللغة إلى الإنجليزية
              Get.back();
            },
            child:const Text('English', style: TextStyle(
               fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
        ],
      ) ,
      )
    );
  }

 
}