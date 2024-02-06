import 'package:flutter/material.dart';

class PushSignUp extends StatelessWidget {
const PushSignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
                  width: 300 ,
                 
                  height:  50 ,
                  child: MaterialButton(
                    onPressed: () {
                     
                    },
                    child: Text("Don't have an account? Sign Up" ,style: TextStyle(color: Colors.grey)),
                  ),
                 );
  }
}