import 'package:flutter/material.dart';
import 'package:inherited_widget/Constants/custom_theme.dart';

class ButtonNotFound extends StatelessWidget {
  final String title;
  final VoidCallback func;
  const ButtonNotFound({
    Key? key,
    required this.title,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomTheme theme = CustomTheme();
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: theme.highlightColor,
        side: BorderSide(
          width: 2,
          color: theme.highlightColor.withOpacity(0.2),
        ),
      ),
      onPressed: func,
      child: Container(
        alignment: Alignment.center,
        color: Colors.transparent,
        width: double.infinity,
        height: 50,
        child: Text(
          title,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: const Color.fromARGB(255, 144, 144, 144),
              ),
        ),
      ),
    );
  }
}
