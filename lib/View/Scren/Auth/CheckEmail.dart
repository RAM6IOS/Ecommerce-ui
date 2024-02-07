import 'package:ecommerce_ui/View/Widget/Auth/CustomTextField.dart';
import 'package:ecommerce_ui/View/Widget/Auth/CustomTitle.dart';
import 'package:ecommerce_ui/View/Widget/Auth/custombuttons.dart';
import 'package:ecommerce_ui/controler/Auth/CheckEmailControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CheckEmail extends StatelessWidget {
const CheckEmail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
     CheckEmailControler controler = Get.put(CheckEmailControler());
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Email"),
        centerTitle:true,
      ),
      body: Container(
         height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(20),
        alignment:Alignment.center,
        child:Column(
        children: [
       const CustomTitle(titel1: 'Check Email', titel2: 'please Enter Your Email Address To Recive A verification ',),
       SizedBox(height: 80,) ,
     CustomTextField(hintText: 'enter your Email', labelText: "Email",icon:Icons.email ,mycontrller: controler.email),
    const SizedBox(height: 50,) ,
     Custombuttons(titelbuttons: 'Check',onPressed: () {
          controler.gotoCodeVerification();
        
    }, ),
        ],
      ),
      ),
    );
  }
}