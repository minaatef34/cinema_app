import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Plaaaaay", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.whiteColor),),
      ),
    );
  }
}
