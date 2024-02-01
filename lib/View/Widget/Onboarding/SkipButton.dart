import 'package:ecommerce_ui/View/Scren/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkipButton extends StatelessWidget {
const SkipButton({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return  Container(
                  width: 300,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Get.offAll(
 SignUp(),
);
                    },
                    child: Text("Skip" ,style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold ,color: Colors.black)),
                  ),
                 );
  }
}