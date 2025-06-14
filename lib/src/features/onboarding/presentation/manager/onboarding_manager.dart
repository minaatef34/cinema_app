import 'package:cinema_app/main.dart';
import 'package:cinema_app/src/core/services/cache/cache_service_impl.dart';
import 'package:cinema_app/src/features/onboarding/data/models/responses/genre_movie_list_response.dart';
import 'package:cinema_app/src/features/onboarding/domain/use_cases/onboarding_use_cases.dart';
import 'package:cinema_app/src/features/signin/presentation/pages/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ChangeNotifierProvider;

final onboardingManagerProvider = ChangeNotifierProvider<OnboardingManager>((ref) => OnboardingManager());

class OnboardingManager extends ChangeNotifier {
  int currentPage = 0;
  bool isLoading = false;

  GenreMovieListResponse? genreMovieListResponse;

  void getGenreMovieList() async {
    toggleLoading(true);
    genreMovieListResponse = await providerContainer.read(onboardingUseCasesProvider).getGenreMovieList();
    toggleLoading(false);
  }

  PageController pageController = PageController(initialPage: 0);

  void setCurrentPage(int page) {
    currentPage = page;
    notifyListeners();
  }

  void toggleLoading(bool state){
    isLoading = state;
    notifyListeners();
  }

  final List<Genres> selectedGenres = [];

  void toggleGenre(Genres genre) {
    if (selectedGenres.contains(genre)) {
      selectedGenres.remove(genre);
    } else {
      selectedGenres.add(genre);
    }

    notifyListeners();
  }

  void onNextTapped(context) {
    if (pageController.page == 0) {
      pageController.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.linear);
    } else {
      providerContainer.read(cacheServiceProvider).setGenre(selectedGenres);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignIn(),
        ),
      );
    }
  }
}
