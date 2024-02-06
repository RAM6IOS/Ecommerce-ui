import 'package:flutter/material.dart';

class TextFieldname extends StatelessWidget {
const TextFieldname({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return TextField( 
  decoration: InputDecoration(
     suffixIcon: Icon(Icons.person,size: 25,), 
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelText: 'First Name',
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
    hintText: 'Enter your First name',
    hintStyle: TextStyle(color: const Color.fromARGB(255, 218, 210, 210)),
    border: OutlineInputBorder(
        borderRadius : const BorderRadius.all(Radius.circular(30.0)),
      
    ),
  ) 
    );
  }
}