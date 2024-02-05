import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
const CustomTitle({ Key? key ,required this.titel1 ,required this.titel2}) : super(key: key);
final String titel1 ;
final String titel2 ;
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Text(titel1 , style: TextStyle(
              fontSize: 30, 
              color: Colors.red,
              fontWeight: FontWeight.bold           
              ),),
           Text(titel2,textAlign:TextAlign.center,style: TextStyle(
                fontSize: 15,
                 color: Colors.grey
              ),),
        ],
      ),
    );
  }
}