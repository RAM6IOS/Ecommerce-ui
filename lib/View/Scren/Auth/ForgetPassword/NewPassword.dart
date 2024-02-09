import 'package:ecommerce_ui/View/Widget/Auth/CustomTextField.dart';
import 'package:ecommerce_ui/View/Widget/Auth/CustomTitle.dart';
import 'package:ecommerce_ui/View/Widget/Auth/custombuttons.dart';
import 'package:ecommerce_ui/controler/Auth/ForgetPassword/NewPasswordControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPassword extends StatelessWidget {
const NewPassword({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
   NewPasswordControler controler = Get.put(NewPasswordControler());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("New Password"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(20),
        alignment:Alignment.center,
        child: Form(
          key: controler.formKey,
          child:Column(
          children: [
         const   CustomTitle(titel1: ' Preview for Password', titel2: 'Please Enter new Password',),
           const  SizedBox(height: 100,),
             CustomTextField(hintText: 'enter your Password', labelText: "New Password",icon:Icons.lock ,mycontrller: controler.newpassword,isPhone: false,validator: ((value)=> controler.validateCustom(value,"password")),),
            const SizedBox(height: 50,),
            CustomTextField(hintText: 'confirm new password', labelText: "Confirm Password",icon:Icons.lock ,mycontrller: controler.resitpassword,isPhone: false,validator: ((value)=> controler.validateCustom(value, "password"))),
const SizedBox(height: 50,),
    Custombuttons(titelbuttons: 'Check',onPressed: () {
      controler.gotoSuccessResetPassword();
    }, ),
    
 Spacer(),
                        ],
        ),
          )
      ),
    );
  }
}