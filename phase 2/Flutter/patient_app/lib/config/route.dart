import 'package:flutter/material.dart';
import 'package:shop_app/models/doctor_model.dart';
import 'package:shop_app/screens/detail_screen.dart';
import 'package:shop_app/screens/fog.dart';
import 'package:shop_app/screens/home_page_screen.dart';
import 'package:shop_app/widgets/custom_route_widget.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => yu(),
      '/HomePage': (_) => HomePageScreen(),
    };
  }

  static Route ?onGenerateRoute(RouteSettings settings) {
    final List<String> pathElements = settings.name!.split('/');
    if (pathElements[0] != '' || pathElements.length == 1) {
      return null;
    }
    switch (pathElements[1]) {
      case "DetailPage":
        return CustomRoute<bool>(
          builder: (BuildContext context) => DetailScreen(
            model: DoctorModel(
                name:"Dr. David Kemp",
            type:"Heart Sergeon",
            description:"A doctor can be found in several settings, including public health organization, group practices and  hospitals They have some of the most diverse and challenging careears available and part of a universally well-respected profession",
             rating:4.5,
                 goodReviews:
                 79.2,
                totalScore:93.2,
                 satisfaction:85.2,
                 isfavourite:true,
                 image:'assets/images/doctor.png',
            ),
          ),
        );
    }
  }
}
