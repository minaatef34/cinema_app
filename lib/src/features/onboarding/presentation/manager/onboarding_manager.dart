import 'package:cinema_app/src/features/signin/presentation/pages/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ChangeNotifierProvider;

final onboardingManagerProvider = ChangeNotifierProvider<OnboardingManager>((ref) => OnboardingManager());

class OnboardingManager extends ChangeNotifier {
  int currentPage = 0;

  PageController pageController = PageController(initialPage: 0);

  void setCurrentPage(int page) {
    currentPage = page;
    notifyListeners();
  }

  final List<String> selectedGenres = [];

  void toggleGenre(String genre) {
    if (selectedGenres.contains(genre)) {
      selectedGenres.remove(genre);
    } else {
      selectedGenres.add(genre);
    }

    notifyListeners();
  }

  final List<String> genres = [
    "Action",
    "Adventure",
    "Drama",
    "Comedy",
    "Crime",
    "Documentary",
    "Sports",
    "Fantasy",
    "Horhor",
    "Music",
    "Western",
    "Thriller",
    "Sci-fi",
  ];

  void onNextTapped(context) {
    if (pageController.page == 0) {
      pageController.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.linear);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignIn(),
        ),
      );
    }
  }
}
