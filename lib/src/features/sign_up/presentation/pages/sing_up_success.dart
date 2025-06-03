import 'package:flutter/material.dart';

import '../../../../shared_widgets/custom_button.dart';
import '../../../../shared_widgets/custom_text_filed.dart';

class SignupSuccess extends StatelessWidget {
  const SignupSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sign up successfully!", style: TextStyle(color: Colors.white, fontSize: 24)),
              SizedBox(height: 10),
              Text("Tell us more about you", style: TextStyle(color: Colors.white70)),
              SizedBox(height: 30),
              CustomTextField(hint: "Your name"),
              SizedBox(height: 15),
              CustomTextField(hint: "Your phone number"),
              SizedBox(height: 15),
              CustomTextField(hint: "Current City/pin-code"),
              Spacer(),
              CustomButton(text: "Continue", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
