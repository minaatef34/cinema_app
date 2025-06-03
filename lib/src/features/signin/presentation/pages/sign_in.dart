import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/features/sign_up/presentation/pages/sign_up.dart';
import 'package:flutter/material.dart';

import '../../../../shared_widgets/custom_button.dart';
import '../../../../shared_widgets/custom_text_filed.dart';
import '../../../../shared_widgets/on_divider.dart';
import '../../../../shared_widgets/social_row.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
              Align(
                alignment: Alignment.topRight,
                child: Text("Skip", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 40),
              Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 24)),
              SizedBox(height: 20),
              CustomTextField(hint: "E-mail"),
              SizedBox(height: 15),
              CustomTextField(hint: "Password", isPassword: true),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text("Forgot password?", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              CustomButton(
                  text: "Sign in",
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ,))
                  }),
              SizedBox(height: 20),
              OrDivider(),
              SizedBox(height: 20),
              SocialRow(),
              Spacer(),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "Don’t you have an account? ",
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        onEnter: (event) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          );
                        },
                        text: "Sign Up",
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
