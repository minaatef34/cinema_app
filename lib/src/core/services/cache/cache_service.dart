import 'package:cinema_app/src/features/onboarding/data/models/responses/genre_movie_list_response.dart';

abstract class CacheService {
  Future<void> init();
  Future<void> setGenre(List<Genres> genre);
  List<Genres> getGenre();
}
