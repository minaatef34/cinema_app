import 'package:cinema_app/src/core/services/cache/cache_service.dart';
import 'package:cinema_app/src/features/onboarding/data/models/responses/genre_movie_list_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final cacheServiceProvider = Provider<CacheService>((ref) => CacheServiceImpl());

class CacheServiceImpl implements CacheService {
  late SharedPreferences sharedPreferences;
  @override
  List<Genres> getGenre() {
    List<String>? genreStrings = sharedPreferences.getStringList('genres');

    if (genreStrings != null) {
      return genreStrings.map((genreString) => Genres.fromString(genreString)).toList();
    }
    return [];
  }

  @override
  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Future<void> setGenre(List<Genres> genre) async {
    // Convert the list of Genres to a list of JSON strings
    List<String> genreStrings = genre.map((genre) => genre.toString()).toList();

    // Save the list of strings in Shared Preferences
    await sharedPreferences.setStringList('genres', genreStrings);
  }
}
