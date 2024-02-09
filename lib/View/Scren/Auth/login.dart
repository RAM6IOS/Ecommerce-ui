import 'package:ecommerce_ui/View/Scren/Auth/SignUp.dart';
import 'package:ecommerce_ui/View/Widget/Auth/CustomTextField.dart';
import 'package:ecommerce_ui/View/Widget/Auth/CustomTitle.dart';
import 'package:ecommerce_ui/View/Widget/Auth/custombuttons.dart';
import 'package:ecommerce_ui/View/Widget/Auth/customlink.dart';
import 'package:ecommerce_ui/View/Widget/Auth/Login/Showpassword.dart';
import 'package:ecommerce_ui/View/Widget/Auth/Login/TextFieldPasword.dart';
import 'package:ecommerce_ui/controler/Auth/LoginControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Login extends GetView<LoginControler> {
const 
 Login({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
      double textScaleFactor = isPortrait ? 1.0 : 1.5;
      LoginControler signUpControler = Get.put(LoginControler());
    return Scaffold(
      appBar : AppBar (
        centerTitle: true,
        backgroundColor:Colors.white,
        title:Text("Log in"),
      ),
      body: SingleChildScrollView(
       child: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(20),
        alignment:Alignment.center,
        child: Form(
            // تفعيل التحقق التلقائي

       key: signUpControler.formKey,
        child: Column(
          children: [
          const  CustomTitle(titel1: 'Wolcome Backe', titel2: 'Create an account to access exclusive features and content',),
            const SizedBox(height: 100,),
             CustomTextField(hintText: 'enter your Email', labelText: "Email",icon:Icons.email ,mycontrller: signUpControler.email ,validator: ((value) => signUpControler.validateCustom(value, "email")),isPhone: false,),
             const SizedBox(height: 50,),
           TextFieldPasword2(validator:((value) => signUpControler.validateCustom(value, "password")) ,),
            
  Flexible(
  flex: 1,
  child: Showpassword()
),
const SizedBox(height: 50,),
    Custombuttons(titelbuttons: 'Log In',onPressed: () {
      controller.gotohome();
    }, ),
    Customlink(titel1: 'Dont have an account? ', titel2: 'Sign Up',puch: (){
      Get.offAll(
() => SignUp(),
);
  },),
 Spacer(),
                        ],
        ),)
      ),)
    );
  }
}

