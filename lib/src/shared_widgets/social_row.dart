import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _socialIcon(AppSvgImages.gmailIcon),
        _socialIcon(AppSvgImages.facebookIcon),
        _socialIcon(AppSvgImages.appleIcon),
      ],
    );
  }

  Widget _socialIcon(String image) {
    return Container(
        height: 53,
        width: 95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.nextIndicatorColor,
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            child: SvgPicture.asset(image)));
  }
}
