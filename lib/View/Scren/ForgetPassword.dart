import 'package:ecommerce_ui/View/Widget/Auth/CustomTextField.dart';
import 'package:ecommerce_ui/View/Widget/Auth/CustomTitle.dart';
import 'package:ecommerce_ui/View/Widget/Auth/custombuttons.dart';
import 'package:ecommerce_ui/controler/ForgetPasswordControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgetPassword extends StatelessWidget {
const ForgetPassword({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
       ForgetPasswordController signUpControler = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(
        title: Text("ForgetPassword"),
        centerTitle:true,
      ),
      body: Container(
         height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(20),
        alignment:Alignment.center,
        child:Column(
        children: [
        CustomTitle(titel1: 'Check Email', titel2: 'Create an account to access exclusive features and content',),
       SizedBox(height: 80,) ,
     CustomTextField(hintText: 'enter your Email', labelText: "Email",icon:Icons.email),
     SizedBox(height: 50,) ,
     Custombuttons(titelbuttons: 'Check',onPressed: () {
    }, ),
        ],
      ),
      ),
    );
      
  }
}

