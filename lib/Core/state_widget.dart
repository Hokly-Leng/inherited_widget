import 'package:flutter/material.dart';

class StateWidget extends StatefulWidget {
  final Widget child;
  const StateWidget({super.key, required this.child});

  @override
  State<StateWidget> createState() => StateWidgetState();
}

class StateWidgetState extends State<StateWidget> {
  int counter = 0;

  void increment() {
    setState(() {
      counter = counter + 1;
    });
  }

  void decrement() {
    setState(() {
      if (counter > 0) {
        counter = counter - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedWidgetState(
      number: counter,
      stateWidgetState: this,
      child: widget.child,
    );
  }
}

class InheritedWidgetState extends InheritedWidget {
  final StateWidgetState stateWidgetState;
  final int number;

  const InheritedWidgetState({
    super.key,
    required this.number,
    required this.stateWidgetState,
    required Widget child,
  }) : super(child: child);

  static StateWidgetState? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<InheritedWidgetState>()
      ?.stateWidgetState;

  static int? num(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<InheritedWidgetState>()
      ?.number;

  @override
  bool updateShouldNotify(InheritedWidgetState oldWidget) {
    return true;
  }
}

// class Car {
//   final int id;
//   final String name;
//   final String model;

//   //constructor
//   const Car({required this.id, required this.name, required this.model});

//   //name constructor
//   Car.honda({required this.id, required this.name, required this.model});
//   // factory constructor
//   // constant constructor
//   // redirecting constructor
// }
