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
    return         GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,mainAxisExtent: 250 ,crossAxisSpacing: 10 ),
        itemCount: 5,
         itemBuilder: (context, index) {
       return Row(
        mainAxisAlignment : MainAxisAlignment.spaceAround,
        children:[
      Cards(),
        ]
       );
         }
       );

  }
}