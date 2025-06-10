import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/features/home/presentation/pages/home.dart';
import 'package:cinema_app/src/features/sign_up/presentation/pages/sign_up.dart';
import 'package:cinema_app/src/shared_widgets/app_button.dart';
import 'package:cinema_app/src/shared_widgets/skip_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../shared_widgets/custom_text_filed.dart';
import '../../../../shared_widgets/on_divider.dart';
import '../../../../shared_widgets/social_row.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
              Text("Sign In",
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 22)),
              SizedBox(height: 23),
              CustomTextField(hint: "E-mail"),
              SizedBox(height: 14),
              CustomTextField(hint: "Password", isPasswordField: true),
              SizedBox(height: 14),
              Align(
                alignment: Alignment.centerRight,
                child: Text("Forgot password?",
                    style: TextStyle(color: AppColors.whiteColor)),
              ),
              SizedBox(height: 28),
              AppButton(
                text: "Sign In",
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                      (_) => false);
                },
              ),
              SizedBox(height: 28),
              OrDivider(),
              SizedBox(height: 40),
              SocialRow(),
              SizedBox(
                height: 206,
              ),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "Don’t you have an account? ",
                    style: TextStyle(color: AppColors.whiteColor),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ),
                              ),
                        text: "Sign Up",
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
