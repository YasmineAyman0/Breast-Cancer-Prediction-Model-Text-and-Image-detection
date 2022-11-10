import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/splash/components/Myapp.dart';
import 'package:shop_app/splashscreen_home/splash.dart';
import 'package:shop_app/theme.dart';
import 'package:shop_app/screens/ui/connect.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await mongo.connect();


  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: dd.routeName,
      routes: routes,
    );
  }
}
