import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/features/onboarding/presentation/manager/onboarding_manager.dart';
import 'package:cinema_app/src/features/onboarding/presentation/widgets/onboarding_content_one.dart';
import 'package:cinema_app/src/features/onboarding/presentation/widgets/onboarding_content_two.dart';
import 'package:cinema_app/src/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared_widgets/skip_button.dart';
import '../../../signin/presentation/pages/sign_in.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final manager = ref.watch(onboardingManagerProvider);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (canPop, result) {
        if (manager.pageController.page == 0) {
          Navigator.pop(context);
        } else {
          manager.pageController.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.linear);
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: kToolbarHeight),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 16),
              child: SkipButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 41),
            Expanded(
              child: PageView(
                controller: manager.pageController,
                onPageChanged: (int? page) {
                  manager.setCurrentPage(page ?? 0);
                },
                children: [
                  OnboardingContentOne(),
                  OnboardingContentTwo(),
                ],
              ),
            ),
            SizedBox(height: 54),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: AppButton(
                text: 'Next',
                onTap: () {
                  manager.onNextTapped(context);
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  height: 4,
                  width: 52,
                  decoration: BoxDecoration(
                    color: manager.currentPage == 0 ? AppColors.mainColor : AppColors.nextIndicatorColor,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(width: 5),
                AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  height: 4,
                  width: 52,
                  decoration: BoxDecoration(
                    color: manager.currentPage != 0 ? AppColors.mainColor : AppColors.nextIndicatorColor,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
