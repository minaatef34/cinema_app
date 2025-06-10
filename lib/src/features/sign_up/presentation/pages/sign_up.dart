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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkipButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
              ),
              SizedBox(height: 40),
              Text("Sign Up", style: TextStyle(color: AppColors.whiteColor, fontSize: 22)),
              SizedBox(height: 20),
              CustomTextField(hint: "E-mail"),
              SizedBox(height: 15),
              CustomTextField(hint: "Password", isPasswordField: true),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: "By clicking the “sign up” button, you accept the terms of the  ",
                  style: TextStyle(color: AppColors.whiteColor),
                  children: [
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(color: AppColors.mainColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              OrDivider(),
              SizedBox(height: 20),
              SocialRow(),
              Spacer(),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
