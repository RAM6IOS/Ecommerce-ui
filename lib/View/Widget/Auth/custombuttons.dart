import 'dart:ffi';

import 'package:flutter/material.dart';

class Custombuttons extends StatelessWidget {
const Custombuttons({ Key? key  ,required this.titelbuttons ,this.onPressed}) : super(key: key);
final String titelbuttons ;
final void Function()? onPressed; 

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 81, 137, 236),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: 300 ,
      height: 50 ,
      margin: EdgeInsets.only(bottom: 10),
      child: MaterialButton(
        onPressed: onPressed , 
        child: Text(
           titelbuttons ,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );;
  }
}