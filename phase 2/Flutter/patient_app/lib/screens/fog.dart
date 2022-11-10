import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_page_screen.dart';
import 'package:shop_app/theme/extention.dart';
import 'package:shop_app/theme/light_color.dart';
import 'package:shop_app/theme/text_styles.dart';

/*
Title:SplashScreen
Purpose:SplashScreen
Created By:Kalpesh Khandla
Created Date: 30 April 2021
*/


class yu extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<yu> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: -1)).then((_) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => HomePageScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/doctor_face.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .6,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [LightColor.purpleExtraLight, LightColor.purple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.5, 6]),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Image.asset(
                "assets/images/heartbeat.jpg",
                color: Colors.white,
                height: 100,
              ),
              Text(
                "Time Health",
                style: TextStyles.h1Style.white,
              ),
              Text(
                "By healthcare Evolution",
                style: TextStyles.bodySm.white.bold,
              ),
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
            ],
          ).alignTopCenter,
        ],
      ),
    );
  }
}
