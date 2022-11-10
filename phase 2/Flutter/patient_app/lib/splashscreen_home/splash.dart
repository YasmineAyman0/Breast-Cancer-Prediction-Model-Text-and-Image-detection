import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';


class Spl extends StatefulWidget {
  Spl({key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<Spl> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => SplashScreen(),
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
                image: AssetImage("assets/doctor_face.jpg"),
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
                      colors: [Colors.purpleAccent, Colors.purple],
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
                "assets/heartbeat.jpg",

                height: 100,
              ),
              Text(
                "Time Health",
                style: TextStyle(color:Colors.white),
              ),
              Text(
                "By healthcare Evolution",
                style: TextStyle(color:Colors.white,	fontWeight: FontWeight.bold ),
              ),
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}