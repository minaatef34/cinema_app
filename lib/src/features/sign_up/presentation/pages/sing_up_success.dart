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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign up successfully!",
                style: TextStyle(color: AppColors.whiteColor, fontSize: 24),
              ),
              SizedBox(height: 10),
              Text(
                "Tell us more about you",
                style: TextStyle(color: AppColors.semiWhiteColor),
              ),
              SizedBox(height: 30),
              CustomTextField(hint: "Your name"),
              SizedBox(height: 15),
              CustomTextField(hint: "Your phone number"),
              SizedBox(height: 15),
              CustomTextField(hint: "Current City/pin-code"),
              Spacer(),
              AppButton(
                text: "Continue",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
