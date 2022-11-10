import 'package:flutter/material.dart';
import 'package:shop_app/config/route.dart';
import 'package:shop_app/theme/theme.dart';




class mean extends StatelessWidget {
  static String routeName = "/screens";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Care App',
      theme:AppTheme.lightTheme,
      routes: Routes.getRoute(),
      onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),

    );
  }
}

