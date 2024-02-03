
import 'package:ecommerce_ui/Core/services/OnboardingServices.dart';
import 'package:ecommerce_ui/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyLocaleController extends GetxController {

   late Locale intiaILang;
   bool showDialog = false;

   MyServices services = Get.find();

  @override
  void onInit() {
    super.onInit();
    _loadSavedLang();
    _showDialog();
  print(showDialog);
    if (showDialog == false){
      Future.delayed(const Duration(seconds: 2), () {
      showLanguageDialog();
    });
    }
    
  }

  void _showDialog(){
    if (services.sharedPreferences.getBool("showDialog") != null){
      showDialog = true ;
    } else {
      showDialog = false ;
    }

  }

  void _loadSavedLang() {
    String? savedLang = services.sharedPreferences.getString("lang");
    //bool? savDialog = services.sharedPreferences.getBool("showDialog");
    if (savedLang != null) {
      intiaILang = Locale(savedLang);
      //showDialog = savDialog!;
    } else {
      intiaILang = Get.deviceLocale!;
    }
    update();
  }

  void changelang(String codelang) {
    Locale locale = Locale(codelang);
    services.sharedPreferences.setString("lang", codelang);

    
    Get.updateLocale(locale);
  }
  


  showLanguageDialog() {
    Get.defaultDialog(
       backgroundColor:Color.fromARGB(255, 252, 248, 248),
      title: "2".tr ,
      content: Container(
        child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              changelang('ar');
              showDialog = true ;
              services.sharedPreferences.getBool("showDialog");
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
                 showDialog = true ;
              services.sharedPreferences.getBool("showDialog");
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