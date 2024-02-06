import 'package:flutter/material.dart';

class PushLogin extends StatelessWidget {
const PushLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
                  width: 300 ,
                 
                  height:  50 ,
                  child: MaterialButton(
                    onPressed: () {
                     
                    },
                    child: RichText(
              text: TextSpan(
                
                text: "I already have an account! ",
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: "Log In",
                    style: TextStyle(
                      color: Colors.blue, // Change color as needed
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
                  ),
                 );;
  }
}