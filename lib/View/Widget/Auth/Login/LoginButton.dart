import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
const LoginButton({ Key? key }) : super(key: key);

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
        onPressed: () {
          },
        child:const Text(
           "Log in" ,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}