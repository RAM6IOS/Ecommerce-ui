
import 'package:ecommerce_ui/controler/SignUpControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class TextFieldPaswordSign extends StatelessWidget {
const TextFieldPaswordSign({ Key? key , required this.mycontrller }) : super(key: key);
final TextEditingController? mycontrller ;


  @override
  Widget build(BuildContext context){
    return GetBuilder(
      init:SignUpControler() ,
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
) );;
  }
}