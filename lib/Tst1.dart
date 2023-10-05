import 'package:flutter/material.dart';
import 'Home.dart';

class Gatgorys3 extends StatefulWidget {
  const Gatgorys3({ super.key });
 
   
   @override 
    State <Gatgorys3> createState() => _Gatgorys3();

}

class _Gatgorys3 extends State<Gatgorys3> {
     final List<String> entries = <String>['sneakers.png', 'heels.png', 'clothes.png' , 'gift-box.png' ,'smartphone.png'];
     int _selectedIndex = -1; 
      int selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, top: 20, bottom: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              "Category",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 5,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Container(
                 height: 300, 
                 width: 200,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/iPhone14.jpg",
                       fit: BoxFit.fill,
                        width: double.infinity, 
                        height: 80,
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
              );
            },
          ),
        ],
      ),
    ),
  ),
);

  }
}