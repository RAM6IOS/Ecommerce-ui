import 'package:flutter/material.dart';
import 'Home.dart';
import 'details.dart';

class Cards extends StatefulWidget {
  
  const Cards({ super.key });
   @override 
    State <Cards> createState() => _Card();

}

class _Card extends State<Cards> {
  
  @override
  Widget build(BuildContext context) {
    return  Card(
       child: InkWell(
        onTap: () => {
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Details(myVariable:  "myVariable" )),
  )
    },
               child: Container(
                 height: 300, 

                 width: 170,
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.grey.withOpacity(0.60),
                     child: Image.asset(
                        "images/iPhone13.png",
                       fit: BoxFit.fill,
                        width: double.infinity, 
                        height: 140,
                      ),
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
                                  '\$20.00',
                                  style: TextStyle(
                                    color:  Color.fromARGB(255, 233, 148, 79),
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