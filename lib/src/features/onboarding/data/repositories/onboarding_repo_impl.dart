import 'package:cinema_app/src/core/base/api_routes.dart';
import 'package:cinema_app/src/core/services/http/http_service.dart';
import 'package:cinema_app/src/core/services/http/http_service_impl.dart';
import 'package:cinema_app/src/features/onboarding/data/models/responses/genre_movie_list_response.dart';
import 'package:cinema_app/src/features/onboarding/domain/repositories/onboarding_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingRepoProvider = Provider<OnboardingRepo>((ref)=> OnboardingRepoImpl(ref.watch(httpServiceProvider)));

class OnboardingRepoImpl implements OnboardingRepo {
  final HttpService httpService;

  OnboardingRepoImpl(this.httpService);

  @override
  Future<GenreMovieListResponse?> getGenreMovieList() async {
    final result = await httpService.get(ApiRoutes.genreMovieList);
    if (result?.statusCode == 200) {
      return GenreMovieListResponse.fromJson(result!.data);
    }
    return null;
  }
}
