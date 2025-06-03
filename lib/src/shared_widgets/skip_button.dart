import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  SkipButton({super.key, this.onPressed});

  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          "Skip",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
