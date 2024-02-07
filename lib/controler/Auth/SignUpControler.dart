import 'package:ecommerce_ui/View/Scren/Auth/CheckEmail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

class SignUpControler extends GetxController {
  late TextEditingController email ;
  late TextEditingController password;
  late TextEditingController username ;
  late TextEditingController phone ;
  bool showPasswordCheckbox = false;
  bool obscureText = true;

  void showPassword(bool value){
    showPasswordCheckbox = value!;
    obscureText = !showPasswordCheckbox;
    update();

  }
  void gotoCheckEmail(){
    Get.offAll(CheckEmail());
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    
    super.onInit();
  
    // يتم استدعاء هذه الدالة عند إنشاء المتحكم (المكافئ ل initState في StatefulWidget)
    // يمكنك وضع التكويد الخاص بك هنا.
  }
  void Showpasswor(){

    Row(
  children: [
    Checkbox(
              value: showPasswordCheckbox,
              activeColor: Color.fromARGB(255, 81, 137, 236),
              onChanged: (value) { 
              //showPassword( value!);
              showPasswordCheckbox = value!;
    obscureText = !showPasswordCheckbox;
    update();

              },
            ),
            Text('Show password'),
 SizedBox(width: 40.0), 
            Container(
                  child: MaterialButton(
                    onPressed: () {
                    },
                    child: Text("kdek",style: const TextStyle(color: Colors.grey ,fontSize: 15)),
                  ),
                 ),     
  ],
);

  }


}