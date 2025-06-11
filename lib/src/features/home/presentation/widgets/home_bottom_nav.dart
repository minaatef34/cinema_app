import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:cinema_app/src/features/home/presentation/manager/nav_bar_current_page_provider.dart';
import 'package:cinema_app/src/features/home/presentation/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeBottomNav extends ConsumerWidget {
  const HomeBottomNav({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final currentTap = ref.watch(navBarCurrentPageProvider);

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
                ref.watch(navBarCurrentPageProvider.notifier).state = 0;
              },
              child: BottomNavItem(
                item: NavBarItem(AppSvgImages.navBottomIcon1, "Movies", 0, currentTap),
              ),
            ),
            GestureDetector(
              onTap: () {
                ref.watch(navBarCurrentPageProvider.notifier).state = 1;
              },
              child: BottomNavItem(
                item: NavBarItem(AppSvgImages.navBottomIcon2, "Play", 1, currentTap),
              ),
            ),
            GestureDetector(
              onTap: () {
                ref.watch(navBarCurrentPageProvider.notifier).state = 2;
              },
              child: BottomNavItem(
                item: NavBarItem(AppSvgImages.navBottomIcon3, "Ticket", 2, currentTap),
              ),
            ),
            GestureDetector(
              onTap: () {
                ref.watch(navBarCurrentPageProvider.notifier).state = 3;
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
