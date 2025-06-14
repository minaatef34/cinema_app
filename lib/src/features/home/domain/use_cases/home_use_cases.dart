import 'package:cinema_app/src/features/home/data/repo_impl/home_repo_impl.dart';
import 'package:cinema_app/src/features/home/data/responses/home_responses.dart';
import 'package:cinema_app/src/features/home/domain/repo/home_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeUseCasesProvider = Provider<HomeUseCases>((ref) => HomeUseCases(ref.watch(homeRepoImplProvider)));

class HomeUseCases {
  final HomeRepo homeRepo;
  HomeUseCases(this.homeRepo);

  @override
  Future<HomeResponses?> getData(List<int> genreId) async {
    return await homeRepo.getData(genreId);
  }
}
