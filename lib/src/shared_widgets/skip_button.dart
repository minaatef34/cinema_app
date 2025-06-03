import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: GestureDetector(
        onTap: onPressed,
        child: Text(
          "Skip",
          style: TextStyle(
            color: AppColors.semiWhiteColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
