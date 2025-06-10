import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/features/home/presentation/pages/home.dart';
import 'package:cinema_app/src/features/sign_up/presentation/pages/sing_up_success.dart';
import 'package:cinema_app/src/features/signin/presentation/pages/sign_in.dart';
import 'package:cinema_app/src/shared_widgets/app_button.dart';
import 'package:cinema_app/src/shared_widgets/skip_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../shared_widgets/custom_text_filed.dart';
import '../../../../shared_widgets/on_divider.dart';
import '../../../../shared_widgets/social_row.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kToolbarHeight),
              SkipButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                      (_) => false);
                },
              ),
              SizedBox(height: 69),
              Text("Sign Up",
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 22)),
              SizedBox(height: 23),
              CustomTextField(hint: "E-mail"),
              SizedBox(height: 14),
              CustomTextField(hint: "Password", isPasswordField: true),
              SizedBox(height: 12),
              Text.rich(
                TextSpan(
                  text:
                      "By clicking the “sign up” button, you accept the terms of the  ",
                  style: TextStyle(color: AppColors.semiDardGrey, fontSize: 12),
                  children: [
                    TextSpan(
                      text: "Privacy Policy",
                      style:
                          TextStyle(color: AppColors.whiteColor, fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28),
              AppButton(
                text: "Sign Up",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupSuccess(),
                    ),
                  );
                },
              ),
              SizedBox(height: 28),
              OrDivider(),
              SizedBox(height: 40),
              SocialRow(),
              SizedBox(height: 206),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: AppColors.whiteColor),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ),
                              ),
                        text: "Sign In",
                        style: TextStyle(color: AppColors.mainColor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 47),
            ],
          ),
        ),
      ),
    );
  }
}
