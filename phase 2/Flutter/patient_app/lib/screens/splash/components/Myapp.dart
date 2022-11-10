
import 'dart:async';

import 'package:flutter/material.dart';



import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';






class dd extends StatefulWidget {
  static String routeName = "/splash";
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<dd> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SplashScreen()));
  }


  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }
  Widget initWidget(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/doctor_face.jpg',
              width: 200,height: 200,),
            SizedBox(height: 50,),

            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Welcome To Your App!',
                  textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 150),
                ),
              ],)
          ],)
        )

    );
  }
}