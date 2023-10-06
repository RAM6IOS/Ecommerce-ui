import 'package:flutter/material.dart';
import 'Gatgory.dart';
import 'CardSeling.dart';



class Gatgorys4 extends StatefulWidget {
  const Gatgorys4({ super.key });
 
   
   @override 
    State <Gatgorys4> createState() => _Gatgorys4();

}

class _Gatgorys4 extends State<Gatgorys4> {
     final List<String> entries = <String>['sneakers.png', 'heels.png', 'clothes.png' , 'gift-box.png' ,'smartphone.png'];
     int _selectedIndex = -1; 
      int selectedIndex = 0;
      @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        
          bottom: AppBar(
            title: Container(

              padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200], // لون الخلفية
              borderRadius: BorderRadius.circular(10.0), // الزوايا الدائرية
            ),
            child:TextField(
            decoration: InputDecoration(
              hintText: 'ابحث هنا',
              prefixIcon: Icon(Icons.search), 
              border: InputBorder.none, // لا توجد حدود
              filled: true,
              fillColor: Colors.grey[200], 
               contentPadding: EdgeInsets.all(10),
            ),
          )),
          actions: [
            IconButton(
              padding:EdgeInsets.only(right: 20),
            icon: Icon(Icons.menu),
            onPressed: () {
              // الاستماع للضغط على الزر الأيسر
            },
          ),
          ],
          )
      ),  
       body: ListView(
        children:[
           Container(
            margin: EdgeInsets.only(left: 15 ,top: 20 ,bottom: 5),
            alignment: Alignment.centerLeft,
          child:Text("Gatgory" ,style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ), ),
          ),
           Gatgorys2(),
               Container(
            margin: EdgeInsets.only(left: 15 ,top: 15 ,bottom: 10),
            alignment: Alignment.centerLeft,
          child:Text("Best Seling" ,style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ), ),
          ),
       CardSeling()
        ])
     );
}
}