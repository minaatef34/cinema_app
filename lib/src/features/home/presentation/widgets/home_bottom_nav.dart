import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({super.key});

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav> {
  int currentTap = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(39),
        gradient: LinearGradient(colors: [
          Theme.of(context).scaffoldBackgroundColor,
          Color(0xff333333),
          Color(0xff333333),
        ]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimatedContainer(
              height: 58,
              width: 58,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 17),
              duration: Duration(milliseconds: 250),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withValues(alpha: .5),
                    Color(0xff333333).withValues(alpha: .5),
                  ].reversed.toList(),
                ),
              ),
              child: SvgPicture.asset(AppSvgImages.navBottomIcon1),
            ),
            AnimatedContainer(
              height: 58,
              width: 58,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 17),
              duration: Duration(milliseconds: 250),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withValues(alpha: .5),
                    Color(0xff333333).withValues(alpha: .5),
                  ].reversed.toList(),
                ),
              ),
              child: SvgPicture.asset(AppSvgImages.navBottomIcon2),
            ),
            AnimatedContainer(
              height: 58,
              width: 58,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 17),
              duration: Duration(milliseconds: 250),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withValues(alpha: .5),
                    Color(0xff333333).withValues(alpha: .5),
                  ],
                ),
              ),
              child: SvgPicture.asset(AppSvgImages.navBottomIcon3),
            ),
            AnimatedContainer(
              height: 58,
              width: 58,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 17),
              duration: Duration(milliseconds: 250),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withValues(alpha: .5),
                    Color(0xff333333).withValues(alpha: .5),
                  ],
                ),
              ),
              child: SvgPicture.asset(AppSvgImages.navBottomIcon4),
            ),
          ],
        ),
      ),
    );
  }
}
