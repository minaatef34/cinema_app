import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:cinema_app/src/features/home/presentation/manager/home_manager.dart';
import 'package:cinema_app/src/features/home/presentation/manager/nav_bar_current_page_provider.dart';
import 'package:cinema_app/src/features/home/presentation/pages/home_content.dart';
import 'package:cinema_app/src/features/home/presentation/widgets/home_bottom_nav.dart';
import 'package:cinema_app/src/features/play/presentation/pages/play_page.dart';
import 'package:cinema_app/src/features/profile/presentation/pages/profile_page.dart';
import 'package:cinema_app/src/features/ticket/presentation/pages/ticket_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(navBarCurrentPageProvider.notifier).state = 0;
      ref.watch(homeManagerProvider).getData();
    });
  }

  final List<Widget> pages = [
    HomeContent(),
    PlayPage(),
    TicketPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: ref.watch(navBarCurrentPageProvider) == 0,
      onPopInvokedWithResult: (canPop, result) {
        if (ref.watch(navBarCurrentPageProvider) == 0) {
          Navigator.pop(context);
        } else {
          ref.watch(navBarCurrentPageProvider.notifier).state = 0;
        }
      },
      child: Scaffold(
        body: pages[ref.watch(navBarCurrentPageProvider)],
        floatingActionButton: ref.watch(navBarCurrentPageProvider) == 0
            ? Container(
                height: 51,
                width: 51,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(33), color: AppColors.mainColor),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    AppSvgImages.filterIcon,
                  ),
                ),
              )
            : null,
        bottomNavigationBar: HomeBottomNav(),
      ),
    );
  }
}
