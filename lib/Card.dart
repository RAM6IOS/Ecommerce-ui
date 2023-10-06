import 'package:flutter/material.dart';
import 'Home.dart';
import 'details.dart';

class Cards extends StatefulWidget {
  const Cards({ super.key });
 
   
   @override 
    State <Cards> createState() => _Card();

}

class _Card extends State<Cards> {
     final List<String> entries = <String>['sneakers.png', 'heels.png', 'clothes.png' , 'gift-box.png' ,'smartphone.png'];
     int _selectedIndex = -1; 
      int selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return  Card(
       child: InkWell(
        onTap: () => {
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Details()),
  )
    },
               child: Container(
               
                 height: 300, 

                 width: 170,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/iPhone14.jpg",
                       fit: BoxFit.fill,
                        width: double.infinity, 
                        height: 200,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'اسم المنتج',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'اسم البائع',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'كلمة بيع',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '\$20.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
       )
              );
        
  }
}