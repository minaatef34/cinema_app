import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.mainColor,
      ),
      child: Center(
        child: Text(text, style: TextStyle(color: AppColors.whiteColor, fontSize: 18, fontWeight: FontWeight.w600),),
      ),
    );
  }
}
