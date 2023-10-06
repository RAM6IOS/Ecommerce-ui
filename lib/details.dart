import 'package:flutter/material.dart';
import 'Home.dart';

class Details extends StatefulWidget {
  const Details({ super.key });
 
   
   @override 
    State <Details> createState() => _Details();

}

class _Details extends State<Details> {
     final List<String> entries = <String>['sneakers.png', 'heels.png', 'clothes.png' , 'gift-box.png' ,'smartphone.png'];
     int _selectedIndex = -1; 
      int selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
    body: Container(
  height: 100, // ارتفاع محدد
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                 return GestureDetector(
        onTap: () {
                setState(() {
                  _selectedIndex = index; // تحديث العنصر المحدد
                });
              },
              child:Container(
        width: 100,
       // height: 40,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _selectedIndex == index ? Color.fromARGB(255, 233, 148, 79): Colors.grey[200],
        
          boxShadow: [
            BoxShadow(
              color: _selectedIndex == index ? Color.fromARGB(255, 218, 115, 31):Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Image.asset('images/${entries[index]}',
          width: 50,
          height: 50,
          ),
          
        ),
              )
      );

              },
    
  ),
          )
    );
  }
}