import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/features/home/presentation/pages/home.dart';
import 'package:cinema_app/src/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import '../../../../shared_widgets/custom_text_filed.dart';

class SignupSuccess extends StatelessWidget {
  const SignupSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 152),
              Text(
                "Sign up successfully!",
                style: TextStyle(color: AppColors.whiteColor, fontSize: 24),
              ),
              SizedBox(height: 9),
              Text(
                "Tell us more about you",
                style: TextStyle(color: AppColors.greyColor),
              ),
              SizedBox(height: 20),
              CustomTextField(hint: "Your name"),
              SizedBox(height: 9),
              CustomTextField(hint: "Your phone number"),
              SizedBox(height: 9),
              CustomTextField(hint: "Current City/pin-code"),
              SizedBox(height: 300),
              AppButton(
                text: "Continue",
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                      (_) => false);
                },
              ),
              SizedBox(height: 51),
            ],
          ),
        ),
      ),
    );
  }
}
