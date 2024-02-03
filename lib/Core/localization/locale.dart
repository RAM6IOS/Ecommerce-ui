import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "ar":{
       "1":"تخطي",
       "2":"تغيير اللغة"
    
     },
    "en":{
      "1":"Skip",
      "2":"Change the language"
      }
  };
  
}