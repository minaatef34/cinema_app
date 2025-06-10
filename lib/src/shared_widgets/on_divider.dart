import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.dividerColor)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text("or", style: TextStyle(color: AppColors.whiteColor)),
        ),
        Expanded(child: Divider(color: AppColors.dividerColor)),
      ],
    );
  }
}
