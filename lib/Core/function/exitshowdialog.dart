import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> exitshowdialog(){
 Get.defaultDialog(
   title: "warrng",
      middleText: "Do you Want to Exit the app",
      onCancel: (){

      },
      onConfirm: (){
        exit(0);
      }
);

 

 return Future.value(false);

}


showExitDialog(BuildContext context) {
    Get.defaultDialog(
       backgroundColor:Color.fromARGB(255, 252, 248, 248),
      title:"Do you want to exit?",
      content: Container(
        child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
            Navigator.of(context as BuildContext).pop(false);
             Navigator.of(context).pop(false);
             //exit(0);
              // قم بتغيير اللغة إلى العربية
              Get.back();
            },
            child:const Text('yes selected' ,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pop();
               Navigator.of(context).pop(true);
              // قم بتغيير اللغة إلى الإنجليزية
              Get.back();
            },
            child:const Text('no selected', style: TextStyle(
               fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
        ],
      ) ,
      )
    );
  }