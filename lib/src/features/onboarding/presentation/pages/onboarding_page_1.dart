import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_images.dart';
import 'package:cinema_app/src/features/onboarding/presentation/widgets/onboarding_image_builder.dart';
import 'package:cinema_app/src/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: kToolbarHeight,
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Padding(
              padding: EdgeInsetsDirectional.only(end: 18),
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 16, color: AppColors.semiWhiteColor),
              ),
            ),
          ),
          SizedBox(
            height: 41,
          ),
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
                child: OnboardingImageBuilder(img: AppImages.image4),
                flex: 3,
              ),
            ],
          ),
          SizedBox(
            height: 98,
          ),
          Align(
            child: Text(
              "Tell us about your \nfavorite movie genres",
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 54,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: AppButton(text: "Next"),
          ),
          SizedBox(
            height: 21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 4,
                width: 52,
                decoration: BoxDecoration(color: AppColors.mainColor, borderRadius: BorderRadius.circular(2)),
              ),
              SizedBox(width: 5,),
              Container(
                height: 4,
                width: 52,
                decoration: BoxDecoration(color: AppColors.nextIndicatorColor, borderRadius: BorderRadius.circular(2)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
