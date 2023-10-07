
import 'package:flutter/material.dart';
import 'Gatgory.dart';
import 'CardSeling.dart';

class Home extends StatefulWidget {
  
  const Home({ super.key });
   @override 
    State <Home> createState() => _Home();
    // State <Home> createState() => _Gatgory();
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
   final List<String> entries = <String>['sneakers.png', 'heels.png', 'clothes.png' , 'gift-box.png' ,'smartphone.png'];

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
        ]),
       bottomNavigationBar: BottomNavigationBar( 
        currentIndex: selectedIndex,
         onTap: ( vla) {
              setState(() {
                selectedIndex = vla;
              });
            },
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