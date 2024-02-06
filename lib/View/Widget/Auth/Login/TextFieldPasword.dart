import 'package:ecommerce_ui/controler/LoginControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldPasword2 extends GetView<LoginControler>{
const TextFieldPasword2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetBuilder(
      init:LoginControler() ,
      builder:(controller) => TextField( 
             obscureText: controller.obscureText,
  decoration:const InputDecoration(
     suffixIcon: Icon(Icons.lock ,size: 25,), 
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelText: 'Pasworde',
    contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
    hintText: 'Enter your Pasworde',
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
        borderRadius : const BorderRadius.all(Radius.circular(30.0)),
      
    ),
  ),
) );
     
  }
}