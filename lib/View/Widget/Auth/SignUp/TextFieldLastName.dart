import 'package:flutter/material.dart';

class TextFieldLastName extends StatelessWidget {
const TextFieldLastName({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TextField( 
  decoration: InputDecoration(
     suffixIcon: Icon(Icons.person ,size: 25,), 
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelText: 'Last Name',
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
    hintText: 'Enter your Last name',
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
        borderRadius : const BorderRadius.all(Radius.circular(30.0)),
      
    ),
  ) 
    );;
  }
}