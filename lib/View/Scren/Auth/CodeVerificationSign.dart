import 'package:ecommerce_ui/View/Scren/Auth/SuccessSignUp.dart';
import 'package:ecommerce_ui/View/Widget/Auth/CustomTitle.dart';
import 'package:ecommerce_ui/View/Widget/Auth/custombuttons.dart';
import 'package:ecommerce_ui/controler/Auth/CodeVerificationSign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get.dart';

class CodeVerificationSign extends StatelessWidget {
const CodeVerificationSign({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
       CodeVerificationControlerSign controler = Get.put(CodeVerificationControlerSign());

    return Scaffold(
      appBar: AppBar(
        title: Text("Code Verification"),
        centerTitle:true,
      ),
      body: Container(
         height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(20),
        alignment:Alignment.center,
        child:Column(
        children: [
      const  CustomTitle(titel1: 'Check Code', titel2: 'Please Enter The Digit Code Sent To wael@gmail.com"',),
      const SizedBox(height: 80,) ,
       VerificationCode(
    textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
    keyboardType: TextInputType.number,
    underlineColor: Colors.amber,
    fullBorder:true , 
    length: 5,
    cursorColor: Colors.blue, 
    clearAll:const Padding(
      padding:  EdgeInsets.all(8.0),
      child: Text(
        'clear all',
        style: TextStyle(fontSize: 18.0, decoration: TextDecoration.underline, color: const Color.fromARGB(255, 12, 12, 12)),
      ),
    ),
    onCompleted: (String value) {
     controler.Completed(value);
    },
    onEditing: (bool value) {
     controler.Editing(value);
     
      if (!controler.onEditing) {
        //controler.gotoNewPassword();
        FocusScope.of(context).unfocus();
        }
        
    },
  ),
   const  SizedBox(height: 50,) ,
     Custombuttons(titelbuttons: 'Check',onPressed: () {
      controler.gotoNewPassword();


    }, ),
        ],
      ),
      ),
    );

  }
}