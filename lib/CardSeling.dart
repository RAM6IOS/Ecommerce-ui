import 'package:flutter/material.dart';
import 'Home.dart';
import 'Card.dart';

class CardSeling extends StatefulWidget {
  const CardSeling({ super.key });
 
   
   @override 
    State <CardSeling> createState() => _CardSeling();

}

class _CardSeling extends State<CardSeling> {
     
  @override
  Widget build(BuildContext context) {
    return         ListView.builder(
       physics: const NeverScrollableScrollPhysics(),
       shrinkWrap: true,

        itemCount: 5,
         itemBuilder: (context, index) {
       return Row(
        mainAxisAlignment : MainAxisAlignment.spaceAround,
        children:[
      Cards(),
      Cards()
        ]
       );
         }
       );

  }
}