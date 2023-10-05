import 'package:flutter/material.dart';


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
     
       body: ListView.builder(
        
        itemCount: 5,
         itemBuilder: (context, index) {
       return Row(
        mainAxisAlignment : MainAxisAlignment.spaceAround,
        children:[
          Card(
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
              ),
        
       Card(
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
      
     
        ]
       );
         }
       )
     );
}
}