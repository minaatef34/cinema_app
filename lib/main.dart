import 'package:cinema_app/src/core/services/package_info/package_info_service_impl.dart';
import 'package:cinema_app/src/core/theme/app_theme.dart';
import 'package:cinema_app/src/features/home/presentation/pages/home_page.dart';
import 'package:cinema_app/src/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ProviderContainer providerContainer = ProviderContainer();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await providerContainer.read(packageInfoServiceProvider).init();

  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinema APP',
      theme: AppTheme.appTheme,
      themeMode: ThemeMode.dark,
      home: SplashPage(),
    );
  }
}
