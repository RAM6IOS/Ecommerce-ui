import 'package:ecommerce_ui/controler/LoginControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class TextFieldPasword extends StatelessWidget {
const TextFieldPasword({ Key? key ,required this.mycontrller}) : super(key: key);
final TextEditingController? mycontrller ;


  @override
  Widget build(BuildContext context){
    return GetBuilder(
      init:LoginControler() ,
      builder:(controller) => TextField( 
        controller: mycontrller,
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