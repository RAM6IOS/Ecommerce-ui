import 'package:flutter/material.dart';

class SignupTitel extends StatelessWidget {
const SignupTitel({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Text("YanFix" , style: TextStyle(
              fontSize: 30, 
              color: Colors.red,
              fontWeight: FontWeight.bold           
              ),),
           Text("Create an account to access exclusive features and content.",textAlign:TextAlign.center,style: TextStyle(
                fontSize: 15,
                 color: Colors.grey
              ),),
        ],
      ),
    );
  }
}