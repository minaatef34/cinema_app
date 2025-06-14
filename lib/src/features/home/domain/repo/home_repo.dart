import 'package:cinema_app/src/features/home/data/responses/home_responses.dart';

abstract class HomeRepo {
  Future<HomeResponses?> getData(List<int> genreId);
}
