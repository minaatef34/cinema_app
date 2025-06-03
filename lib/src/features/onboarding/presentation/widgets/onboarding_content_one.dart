import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_images.dart' show AppImages;
import 'package:flutter/material.dart';

import 'onboarding_image_builder.dart';

class OnboardingContentOne extends StatelessWidget {
  const OnboardingContentOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: OnboardingImageBuilder(img: AppImages.image3),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 4,
              child: OnboardingImageBuilder(img: AppImages.image8),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 4,
              child: OnboardingImageBuilder(img: AppImages.image7),
            ),
            SizedBox(width: 5),
            Expanded(
              child: OnboardingImageBuilder(img: AppImages.image2, fitBool: false),
            ),
          ],
        ),
        SizedBox(
          height: 11,
        ),
        Row(
          children: [
            Expanded(
              child: OnboardingImageBuilder(img: AppImages.image1, fitBool: false),
            ),
            SizedBox(width: 5),
            Expanded(
              flex: 4,
              child: OnboardingImageBuilder(img: AppImages.image5),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 4,
              child: OnboardingImageBuilder(img: AppImages.image6),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 3,
              child: OnboardingImageBuilder(img: AppImages.image4),
            ),
          ],
        ),
        SizedBox(
          height: 98,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Tell us about your \nfavorite movie genres",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
