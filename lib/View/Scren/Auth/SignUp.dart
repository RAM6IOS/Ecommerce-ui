import 'package:ecommerce_ui/View/Scren/Auth/login.dart';
import 'package:ecommerce_ui/View/Widget/Auth/CustomTextField.dart';
import 'package:ecommerce_ui/View/Widget/Auth/CustomTitle.dart';
import 'package:ecommerce_ui/View/Widget/Auth/custombuttons.dart';
import 'package:ecommerce_ui/View/Widget/Auth/customlink.dart';
import 'package:ecommerce_ui/View/Widget/Auth/SignUp/Showpassword.dart';
import 'package:ecommerce_ui/View/Widget/Auth/SignUp/TextFieldPasword.dart';
import 'package:ecommerce_ui/controler/Auth/SignUpControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    SignUpControler controler = Get.put(SignUpControler());
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title:Text("Sign Up"),
      ),
      body: SingleChildScrollView(
       child: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(20),
        alignment:Alignment.center,
        child: Form(
       key: controler.formKey,
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const CustomTitle(titel1: 'YanFix', titel2: 'Create an account to access exclusive features and content',),
             const SizedBox(height: 80,),
             CustomTextField(hintText: 'enter your user name', labelText: "User Name",icon:Icons.person ,mycontrller: controler.username,isPhone: false,validator: ((value) => controler.validateCustom(value ,"Name")),),
            const  SizedBox(height: 30,),
              CustomTextField(hintText: 'enter your Phone namber', labelText: "Phone Namber",icon:Icons.phone ,mycontrller: controler.phone,isPhone: true,validator: ((value) => controler.validateCustom(value ,"Phone namber"))),
            const  SizedBox(height: 30,),
              CustomTextField(hintText: 'enter your Email', labelText: "Email",icon:Icons.email,mycontrller: controler.email ,isPhone: false,validator: ((value) => controler.validateCustom(value ,"email"))),
            const  SizedBox(height: 30,),
           TextFieldPaswordSign(mycontrller: controler.password ,validator:((value) => controler.validateCustom(value ,"password"))),
     
 const Flexible(
  flex: 1,
  child: ShowpasswordSign(),
),
const SizedBox(height: 50,),
    Custombuttons(titelbuttons: 'Sign Up',onPressed: () {
      controler.gotoCheckEmail();

    }, ),
  Customlink(titel1: 'I already have an account! ', titel2: 'Log In',puch: (){
    Get.offAll(
 () => Login(),
);
  },),
 Spacer()
                ],
        ),
      ),))
    );
    
  }
}