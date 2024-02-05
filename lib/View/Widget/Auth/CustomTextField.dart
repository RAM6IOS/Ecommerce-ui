import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  
const CustomTextField({ Key? key  ,required this.hintText ,required this.icon ,required this.labelText , this.mycontrller}) : super(key: key);
final String labelText ;
final String hintText;
final IconData icon ;
final TextEditingController? mycontrller ;

  @override
  Widget build(BuildContext context){
    return TextField( 
      controller: mycontrller ,
  decoration: InputDecoration(
     suffixIcon: Icon(icon ,size: 25,), 
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelText: labelText,
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
        borderRadius : const BorderRadius.all(Radius.circular(30.0)),
      
    ),
  ) 
    );;
  }
}