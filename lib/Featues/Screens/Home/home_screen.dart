import 'package:flutter/material.dart';
import 'package:inherited_widget/Core/state_widget.dart';
import 'package:inherited_widget/Featues/Screens/Home/Widgets/button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final number = InheritedWidgetState.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 20),
              child: Text(
                'Counter Number:  ${number?.counter}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            ButtonWidget(
              title: 'Go To Counter',
              func: () => Navigator.pushNamed(context, '/counter'),
              color: Colors.amber,
            ),
            ButtonWidget(
              title: 'Go To Colors',
              func: () {},
              color: Colors.indigo,
            ),
            ButtonWidget(
              title: 'Not Found',
              func: () => Navigator.pushNamed(context, '/notfound'),
              color: Colors.lime,
            ),
          ],
        ),
      ),
    );
  }
}
