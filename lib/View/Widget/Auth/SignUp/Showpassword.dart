import 'package:ecommerce_ui/controler/SignUpControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class ShowpasswordSign extends StatelessWidget {
const ShowpasswordSign({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetBuilder(
      init:SignUpControler(),
      builder:(controller) =>Row(
  children: [
    Checkbox(
              value: controller.showPasswordCheckbox,
              activeColor: Color.fromARGB(255, 81, 137, 236),
              onChanged: (value) { 
                controller.showPassword( value!);
              },
            ),
            Text('Show password'),
 SizedBox(width: 40.0), 
                
  ],
));;
  }
}