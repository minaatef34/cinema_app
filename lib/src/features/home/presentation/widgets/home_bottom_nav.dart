import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:cinema_app/src/features/home/presentation/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';

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
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTap = 0;
                });
              },
              child: BottomNavItem(
                item: NavBarItem(AppSvgImages.navBottomIcon1, "Movies", 0, currentTap),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTap = 1;
                });
              },
              child: BottomNavItem(
                item: NavBarItem(AppSvgImages.navBottomIcon2, "Play", 1, currentTap),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTap = 2;
                });
              },
              child: BottomNavItem(
                item: NavBarItem(AppSvgImages.navBottomIcon3, "Ticket", 2, currentTap),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTap = 3;
                });
              },
              child: BottomNavItem(
                item: NavBarItem(AppSvgImages.navBottomIcon4, "More", 3, currentTap),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
