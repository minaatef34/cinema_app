import 'package:cinema_app/main.dart';
import 'package:cinema_app/src/core/services/cache/cache_service_impl.dart';
import 'package:cinema_app/src/features/home/data/responses/home_responses.dart';
import 'package:cinema_app/src/features/home/domain/use_cases/home_use_cases.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeManagerProvider = ChangeNotifierProvider<HomeManager>((ref) => HomeManager());

class HomeManager extends ChangeNotifier {
  HomeResponses? homeResponses;
  bool isLoading = false;

  void toggleLoading(bool state) {
    isLoading = state;
    notifyListeners();
  }

  Future<void> getData() async {
    toggleLoading(true);
    final savedGenre = providerContainer.read(cacheServiceProvider).getGenre();
    List<int> ids = savedGenre.map((item) => item.id ?? -1).toList();
    homeResponses = await providerContainer.read(homeUseCasesProvider).getData(ids);
    toggleLoading(false);
  }
}
