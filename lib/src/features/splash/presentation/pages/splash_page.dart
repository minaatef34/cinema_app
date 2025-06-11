import 'package:cinema_app/src/core/services/package_info/package_info_service_impl.dart';
import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:cinema_app/src/features/splash/presentation/manager/splash_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(splashManagerProvider).splashTimer(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          Spacer(),
          Center(child: SvgPicture.asset(AppSvgImages.appIcon)),
          Spacer(),
          Text(
            "Version ${ref.watch(packageInfoServiceProvider).getCurrentVersion()}",
            style: TextStyle(fontSize: 12,),
          ),
          SizedBox(height: 31),
        ],
      ),
    );
  }
}
