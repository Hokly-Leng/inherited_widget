import 'package:flutter/material.dart';
import 'package:inherited_widget/Constants/custom_theme.dart';
import 'package:inherited_widget/Core/routes.dart';
import 'package:inherited_widget/Core/state_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final routes = Routes();
    return StateWidget(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo InheritedWidget',
        theme: CustomTheme.lightTheme,
        initialRoute: '/',
        onGenerateRoute: routes.onRoutes,
      ),
    );
  }
}