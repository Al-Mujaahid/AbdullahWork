

import 'package:figma_work/frontend/screen/auth/login.dart';
import 'package:figma_work/frontend/screen/splash_sceen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {

  static Route onGenerateRoute(RouteSettings settings) {
    
    String name = settings.name;
    dynamic argument = settings.arguments;

    switch (name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (context) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) => Container(
          child: Text('Page Not Found'),
        ));
    }
  }
}