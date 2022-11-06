import 'package:flutter/material.dart';
import 'package:inherited_widget/Core/state_widget.dart';
import 'package:inherited_widget/Featues/Screens/Counter/Widgets/button_counter.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = InheritedWidgetState.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${counter?.counter}',
              style: const TextStyle(fontSize: 100),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonCounter(
                    icon: Icons.remove,
                    func: () {
                      counter?.decrement();
                      int? num = counter?.counter;
                      if (num! > 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(milliseconds: 400),
                          content: Text('The Number is Decremnt'),
                        ),
                      );
                      }
                    },
                  ),
                  ButtonCounter(
                    icon: Icons.add,
                    func: () => counter?.increment(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
