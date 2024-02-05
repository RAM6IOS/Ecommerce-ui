import 'package:ecommerce_ui/View/Scren/SignUp.dart';
import 'package:ecommerce_ui/View/Widget/Auth/CustomTextField.dart';
import 'package:ecommerce_ui/View/Widget/Auth/CustomTitle.dart';
import 'package:ecommerce_ui/View/Widget/Auth/TextFieldPasword.dart';
import 'package:ecommerce_ui/View/Widget/Auth/custombuttons.dart';
import 'package:ecommerce_ui/View/Widget/Auth/customlink.dart';
import 'package:ecommerce_ui/View/Widget/Login/LoginButton.dart';
import 'package:ecommerce_ui/View/Widget/Login/Showpassword.dart';
import 'package:ecommerce_ui/View/Widget/Login/TextFieldEmail.dart';
import 'package:ecommerce_ui/View/Widget/Login/TextFieldPasword.dart';
import 'package:ecommerce_ui/View/Widget/Login/pushSignUp.dart';
import 'package:ecommerce_ui/controler/LoginControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Login extends GetView<LoginControler> {
const 
 Login({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
      double textScaleFactor = isPortrait ? 1.0 : 1.5;
    return Scaffold(
      appBar : AppBar (
        centerTitle: true,
        backgroundColor:Colors.white,
        title:Text("Log in"),
      ),
      body: GetBuilder(
        init: LoginControler(),
        builder: (controller) => SingleChildScrollView(
       child: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(20),
        alignment:Alignment.center,
        child: Column(
          children: [
            CustomTitle(titel1: 'Wolcome Backe', titel2: 'Create an account to access exclusive features and content',),
             SizedBox(height: 100,),
             CustomTextField(hintText: 'enter your Email', labelText: "Email",icon:Icons.email ,mycontrller: controller.email),
              SizedBox(height: 50,),
             TextFieldPasword(mycontrller: controller.password),
            
  Flexible(
  flex: 1,
  child: Showpassword(titel2: 'forget my password')
),
SizedBox(height: 50,),
    Custombuttons(titelbuttons: 'Log In',onPressed: () {
    }, ),
    Customlink(titel1: 'Dont have an account? ', titel2: 'Sign Up',puch: (){
      Get.offAll(
 SignUp(),
);
  },),
 Spacer(),
                        ],
        ),
      ),))
    );
  }
}

