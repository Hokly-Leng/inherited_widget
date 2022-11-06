import 'package:flutter/material.dart';
import 'package:inherited_widget/Featues/Screens/Counter/counter_screen.dart';
import 'package:inherited_widget/Featues/Screens/Home/home_screen.dart';
import 'package:inherited_widget/Featues/Screens/NotFound/notfound_screen.dart';

class Routes {
  Route onRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case '/counter':
        return MaterialPageRoute(builder: (context) => const CounterScreen(),);
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundScreen(),
        );
    }
  }
}
