import '../../data/models/responses/genre_movie_list_response.dart';

abstract class OnboardingRepo {
  Future<GenreMovieListResponse?> getGenreMovieList();
}
