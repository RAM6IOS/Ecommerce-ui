import 'package:ecommerce_ui/View/Widget/Auth/custombuttons.dart';
import 'package:flutter/material.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
       // backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text("Success Sign",),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: Colors.blue,
          )),
          Text("congratulations",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 30)),
          Text("successfully registered"),
          const Spacer(),
         Custombuttons(titelbuttons: 'Home',onPressed: () {
    }, ),
          const SizedBox(height: 30)
        ]),
      ),
    );
  }
}