import 'package:cinema_app/src/features/onboarding/data/models/responses/genre_movie_list_response.dart';
import 'package:cinema_app/src/features/onboarding/data/repositories/onboarding_repo_impl.dart';
import 'package:cinema_app/src/features/onboarding/domain/repositories/onboarding_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingUseCasesProvider = Provider<OnboardingUseCases>((ref) => OnboardingUseCases(ref.watch(onboardingRepoProvider)));

class OnboardingUseCases {
  final OnboardingRepo onboardingRepo;

  OnboardingUseCases(this.onboardingRepo);

  Future<GenreMovieListResponse?> getGenreMovieList() async {
    return await onboardingRepo.getGenreMovieList();
  }
}
