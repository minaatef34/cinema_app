import 'package:cinema_app/src/features/onboarding/presentation/pages/onboarding_page_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashManagerProvider = ChangeNotifierProvider<SplashManager>((ref) => SplashManager());

class SplashManager extends ChangeNotifier {

  void splashTimer(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      _navigateToNextPage(context);
    },);
  }

  void _navigateToNextPage(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => OnboardingPage1()));
  }
}
