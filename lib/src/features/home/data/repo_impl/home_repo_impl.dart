import 'package:cinema_app/src/core/base/api_routes.dart';
import 'package:cinema_app/src/core/services/http/http_service.dart';
import 'package:cinema_app/src/core/services/http/http_service_impl.dart';
import 'package:cinema_app/src/features/home/data/responses/home_responses.dart';
import 'package:cinema_app/src/features/home/domain/repo/home_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRepoImplProvider = Provider<HomeRepo>((ref) => HomeRepoImpl(ref.watch(httpServiceProvider)));

class HomeRepoImpl implements HomeRepo {
  final HttpService httpService;

  HomeRepoImpl(this.httpService);

  @override
  Future<HomeResponses?> getData(List<int> genreId) async {
    final String url;

    if (genreId.isNotEmpty) {
      final joinedGenres = genreId.join(',');
      url = '${ApiRoutes.movieList}?with_genres=$joinedGenres';
    } else {
      url = ApiRoutes.movieList;
    }

    final result = await httpService.get(url);

    if (result?.statusCode == 200) {
      return HomeResponses.fromJson(result?.data);
    }

    return null;
  }
}
