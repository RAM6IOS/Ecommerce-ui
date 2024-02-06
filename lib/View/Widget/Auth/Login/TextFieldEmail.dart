import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
const TextFieldEmail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TextField( 
  decoration: InputDecoration(
     suffixIcon: Icon(Icons.email ,size: 25,), 
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelText: 'Email',
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
    hintText: 'Enter your Email',
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
        borderRadius : const BorderRadius.all(Radius.circular(30.0)),
      
    ),
  ) 
    );
  }
}