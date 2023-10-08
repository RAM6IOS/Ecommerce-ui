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
    body:Container(
      alignment: Alignment.center,
     child:Column(
      children: [
        Expanded(child: Image.asset( "images/iPhone14.jpg",
        fit: BoxFit.fill,
                        width: double.infinity, 
        ),),
         Expanded(child: Column(
           mainAxisAlignment : MainAxisAlignment.spaceAround,
          children: [
          Text("iPone 14 max pro",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),),
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
  //alignment: Alignment.center,
  
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            
            children: [
               Spacer(),
              Text("Colors:"),
             Spacer(),
              Text("Gry"),
             Spacer(),
              Text("Black"),
               Spacer()

            ],
          )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            
            children: [
               Spacer(),
              Text("Size:"),
             Spacer(),
              Text("38"),
               Spacer(),
               Text("39"),
             Spacer(),
              Text("40"),
               Spacer(),
              Text("41"),
               Spacer()

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