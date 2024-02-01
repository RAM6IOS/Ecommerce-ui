import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({ Key? key }) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final introKey = GlobalKey<IntroductionScreenState>();

  int currentPage = 0;
  static const bodyStyle = TextStyle(fontSize: 19.0);
  static const pageDecoration =  PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );


    final List<PageViewModel> pages = [
    PageViewModel(
      decoration: pageDecoration,
      title: "مرحبًا بك",
      // قم بتعديل هنا: استخدم body وقم بتوجيهها إلى Stack
      bodyWidget : Column(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Image.asset('images/sneakers.png'),
              Text("نص توضيحي يصف ميزات التطبيق الخاص بك.", style: bodyStyle),
            ],
          ),

      ],)
      
    ),
    PageViewModel(
      decoration: pageDecoration,
      title: "استكشافfklefdsm,dfmdfmc ",
      // قم بتعديل هنا: استخدم body وقم بتوجيهها إلى Stack
      bodyWidget : Column(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Image.asset('images/sneakers.png'),
              Text("نص توضيحي يصف ميزات التطبيق الخاص بك.", style: bodyStyle),
            ],
          ),

      ],)
      
    ),
    // يمكنك إضافة المزيد من الصفحات حسب الحاجة.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:IntroductionScreen(
      key: introKey,
     globalBackgroundColor: Colors.white,
      pages: pages,
      onDone: () {
        // يمكنك إضافة التفاعلات هنا عندما ينتهي المستخدم من Onboarding.
      },
      onSkip: () {
        // يمكنك إضافة التفاعلات هنا عندما يقوم المستخدم بتخطي Onboarding.
      },
      showSkipButton: true,
      skip: const Text("تخطي"),
      next: const Text("التالي"),
      done: const Text("تم"),

      
      dotsDecorator: DotsDecorator(
      size: const Size(10.0, 10.0),
      color: Colors.grey,
      activeColor: Colors.blue,
      activeSize: const Size(22.0, 10.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    ),
    isProgress: true,
    
     // ضبط مدة الر
    ),
    
    );
  }
}

