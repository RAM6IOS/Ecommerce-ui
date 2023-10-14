import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'Home.dart';

class Details extends StatefulWidget {
  final String myVariable;
  //const Details({ super.key  , required this.myVariable});
   const Details({required this.myVariable, Key? key}) : super(key: key);

   
   @override 
    State <Details> createState() => _Details();

}

class _Details extends State<Details> {
  
  

  @override
  Widget build(BuildContext context) {
    List<String> images = [
  'images/iPhone13.png',
  //'assets/image2.jpg',
  //'assets/image3.jpg',
];

    return Scaffold(
      appBar: AppBar(
        
      ),
    body:Container(
      alignment: Alignment.center,
     child:Column(
      children: [
        Expanded(
          child:CarouselSlider(
  items: images.map((image) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 224, 221, 213),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }).toList(),
  options: CarouselOptions(
    height: 400.0,
    enlargeCenterPage: true,
  ),
) ,
),
         Expanded(child: Column(
           mainAxisAlignment : MainAxisAlignment.spaceAround,
          children: [
           // SizedBox(height: 20,),
          Text(widget.myVariable ?? "Default Value",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),),
          //SizedBox(height: 40),
          Text("apple Elctrencia",style: TextStyle(
            fontSize: 15,
            color: Colors.grey
          )),
         
          Text("988" ,style: TextStyle(
            color:Color.fromARGB(255, 233, 148, 79),
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          Align(
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            
            children: [
             
              Text("Colors:" ,style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 20),
              Text("Gry"),
             SizedBox(width: 20),
              Text("Black"),
               
            ],
          )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,  
            children: [
              
              Text("Size:",style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
             SizedBox(width: 15),
              Text("38"),
              SizedBox(width: 15),
               Text("39"),
             SizedBox(width: 15),
              Text("40"),
                SizedBox(width: 15),
              Text("41"),
              
            ],
          ),
          MaterialButton(
            height: 50,
             minWidth: 200.0,
              color: Color.fromARGB(255, 0, 0, 0),
            onPressed: (){} ,child: Text("add in card" ,style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),), )
         ],),),
      ],))
    );
  }
}