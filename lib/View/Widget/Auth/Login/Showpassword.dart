import 'package:ecommerce_ui/View/Scren/ForgetPassword.dart';
import 'package:ecommerce_ui/View/Scren/SignUp.dart';
import 'package:ecommerce_ui/controler/LoginControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Showpassword extends GetView<LoginControler> {
 Showpassword({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return GetBuilder(
      init:LoginControler() ,
      builder:(controller) =>Row(
  children: [
    Checkbox(
              value: controller.showPasswordCheckbox,
              activeColor: Color.fromARGB(255, 81, 137, 236),
              onChanged: (value) { 
                controller.showPassword( value!);
              },
            ),
            Text('Show password'),
 SizedBox(width: 40.0), 
            Container(
                  child: MaterialButton(
                    onPressed: () {
                      Get.offAll(
() => ForgetPassword(),
);
                      
                    },
                    child: Text('forget my password',style: const TextStyle(color: Colors.grey ,fontSize: 15)),
                  ),
                 ),     
  ],
));
    
    
  }
}