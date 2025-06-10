import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey, Sarthak",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.whiteColor),
            ),
            Text(
              "name.gmail >",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.mainColor),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.nextIndicatorColor,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  AppSvgImages.searchIcon,
                ),
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.nextIndicatorColor,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  AppSvgImages.userIcon,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
