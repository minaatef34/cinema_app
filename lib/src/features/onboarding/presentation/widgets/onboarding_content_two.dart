import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/features/onboarding/presentation/manager/onboarding_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingContentTwo extends ConsumerWidget {
  const OnboardingContentTwo({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final manager = ref.watch(onboardingManagerProvider);
    return Column(
      children: [
        Spacer(),
        Wrap(
          spacing: 6,
          runSpacing: 6,
          alignment: WrapAlignment.center,
          children: manager.genres.map((genre) {
            final isSelected = manager.selectedGenres.contains(genre);
            return GestureDetector(
              onTap: () => manager.toggleGenre(genre),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.mainColor : AppColors.nextIndicatorColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  genre,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
        Spacer(),
        Text(
          "Select the genres you like to watch",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
