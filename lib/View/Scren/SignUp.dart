import 'package:ecommerce_ui/View/Scren/login.dart';
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
import 'package:ecommerce_ui/View/Widget/SignUp/PushLogin.dart';
import 'package:ecommerce_ui/View/Widget/SignUp/SignUpButton.dart';
import 'package:ecommerce_ui/View/Widget/SignUp/SignupTitel.dart';
import 'package:ecommerce_ui/View/Widget/SignUp/TextFieldLastName.dart';
import 'package:ecommerce_ui/View/Widget/SignUp/TextFielname.dart';
import 'package:ecommerce_ui/controler/LoginControler.dart';
import 'package:ecommerce_ui/controler/SignUpControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    SignUpControler signUpControler = Get.put(SignUpControler());
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title:Text("Sign Up"),
      ),
      body: GetBuilder(
        init: LoginControler(),
        builder: (controller) => SingleChildScrollView(
       child: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(20),
        alignment:Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             //SignupTitel(),
             CustomTitle(titel1: 'YanFix', titel2: 'Create an account to access exclusive features and content',),
             SizedBox(height: 80,),
             CustomTextField(hintText: 'enter your user name', labelText: "User Name",icon:Icons.person ,mycontrller: signUpControler.username,),
              SizedBox(height: 30,),
              CustomTextField(hintText: 'enter your Phone namber', labelText: "Phone Namber",icon:Icons.phone ,mycontrller: signUpControler.phone,),
              SizedBox(height: 30,),
              CustomTextField(hintText: 'enter your Email', labelText: "Email",icon:Icons.email,mycontrller: signUpControler.email),
              SizedBox(height: 30,),
            // TextFieldPasword(), 
            TextFieldPasword(mycontrller: signUpControler.password,),
  Flexible(
  flex: 1,
  child: Showpassword(titel2: '',)
),
SizedBox(height: 50,),
    //SignUpButton(),
    Custombuttons(titelbuttons: 'Sign Up',onPressed: () {
    }, ),
  
  Customlink(titel1: 'I already have an account! ', titel2: 'Log In',puch: (){
    Get.offAll(
 Login(),
);
  },),
 Spacer(),
                        ],
        ),
      ),)) 
    );
    
  }
}