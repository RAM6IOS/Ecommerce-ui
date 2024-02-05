import 'package:flutter/material.dart';

class Customlink extends StatelessWidget {
const Customlink({ Key? key, required this.titel1, required this.titel2, this.puch }) : super(key: key);
final String titel1 ;
final String titel2 ;

final void Function()? puch;

  @override
  Widget build(BuildContext context){
    return Container(
                  width: 300 ,
                 
                  height:  50 ,
                  child: MaterialButton(
                    onPressed: puch ,
                    child: RichText(
              text: TextSpan(
                
                text: titel1,
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: titel2,
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