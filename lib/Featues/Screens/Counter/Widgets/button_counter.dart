import 'package:flutter/material.dart';

class ButtonCounter extends StatelessWidget {
  final IconData icon;
  final VoidCallback func;
  const ButtonCounter({
    Key? key,
    required this.icon,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: func,
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          width: 100,
          height: 40,
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
