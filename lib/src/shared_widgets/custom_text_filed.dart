import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final bool isPasswordField;

  const CustomTextField(
      {super.key, required this.hint, this.isPasswordField = false});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPassword = true;

  void togglePasswordVisibility() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPasswordField ? isPassword : false,
      style: TextStyle(color: AppColors.whiteColor),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(color: AppColors.greyColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        suffixIcon: widget.isPasswordField
            ? IconButton(
                icon: Icon(
                  isPassword ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.greyColor,
                ),
                onPressed: togglePasswordVisibility,
              )
            : null,
      ),
    );
  }
}
