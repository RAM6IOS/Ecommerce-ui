import 'package:flutter/material.dart';
import 'Home.dart';

class Details extends StatefulWidget {
  const Details({ super.key });
 
   
   @override 
    State <Details> createState() => _Details();

}

class _Details extends State<Details> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
    body: Column(
      children: [
        Expanded(child: Image.asset( "images/iPhone14.jpg",
        fit: BoxFit.fill,
                        width: double.infinity, 
        ),),
         Expanded(child: Column(
           mainAxisAlignment : MainAxisAlignment.spaceAround,
          children: [
          Text("iPone 14 max pro"),
          Text("apple Elctrencia"),
          Text("988"),
          Row(
            children: [
              Text("Colors:"),
              Text("Gry"),
              Text("Black")

            ],
          )

         ],),),

      ],)
    );
  }
}