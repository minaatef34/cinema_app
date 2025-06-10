import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _socialIcon(Icons.facebook),
        _socialIcon(Icons.g_mobiledata),
        _socialIcon(Icons.apple),
      ],
    );
  }

  Widget _socialIcon(IconData icon) {
    return Container(
      height: 53,
      width: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.nextIndicatorColor,
      ),
      child: Icon(
        icon,
        color: AppColors.whiteColor,
        size: 20,
      ),
    );
  }
}
