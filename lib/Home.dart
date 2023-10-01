

import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  
  const Home({ super.key });
 
   
   @override 
    State <Home> createState() => _Home();


}
class _Home extends State<Home> {
   int selectedIndex = 0;
   int _selectedIndex = -1; 
   final List<Widget> _pages = [
    // تستطيع استبدال هذه الصفحات بالصفحات الخاصة بك
    Center(child: Text('الصفحة الرئيسية')),
    Center(child: Text('التسوق')),
    Center(child: Text('المستخدم')),
  ];

  @override
  // TODO: implement widget
  Widget build(BuildContext context){
     

      
      
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
      
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15 ,top: 20 ,bottom: 5),
            alignment: Alignment.centerLeft,
          child:Text("Gatgory" ,style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ), ),
          ),
          Container(
  height: 150, // ارتفاع محدد
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 5,
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
          child: Text(
            'عنصر $index',
            style: TextStyle(color:  Colors.black, // تغيير لون النص بناءً على العنصر المحدد
),
          ),
        ),
              )
      );

              },
    
  ),
          )
        ]
),

       bottomNavigationBar: BottomNavigationBar(
       
        currentIndex: selectedIndex,
         onTap: ( vla) {
              setState(() {
                selectedIndex = vla;
              });
            },
        //selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),


        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الصفحة الرئيسية',
            ),

        BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'التسوق',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'المستخدم',
             

            
            ),

        ]
       )

    );
  }

}