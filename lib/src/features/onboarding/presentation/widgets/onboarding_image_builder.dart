import 'package:flutter/material.dart';

class OnboardingImageBuilder extends StatelessWidget {
  const OnboardingImageBuilder({super.key, required this.img, this.fitBool = true});
  final String img;
  final bool fitBool;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        img,
        height: 182,
        fit: fitBool ? BoxFit.cover : BoxFit.contain,
      ),
    );
  }
}
