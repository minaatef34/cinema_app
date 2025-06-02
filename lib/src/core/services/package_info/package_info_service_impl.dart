import 'package:cinema_app/src/core/services/package_info/package_info_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

final packageInfoServiceProvider = Provider<PackageInfoService>((ref) => PackageInfoServiceImpl());

class PackageInfoServiceImpl implements PackageInfoService {
  late PackageInfo packageInfo;

  @override
  String getCurrentVersion() {
    return packageInfo.version;
  }

  @override
  Future<void> init() async {
    packageInfo = await PackageInfo.fromPlatform();
  }
}
