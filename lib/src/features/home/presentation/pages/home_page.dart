import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_images.dart';
import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:cinema_app/src/features/home/presentation/widgets/home_app_bar.dart';
import 'package:cinema_app/src/features/home/presentation/widgets/home_banar_section.dart';
import 'package:cinema_app/src/features/home/presentation/widgets/home_bottom_nav.dart';
import 'package:cinema_app/src/features/home/presentation/widgets/home_recommended_section.dart';
import 'package:cinema_app/src/shared_widgets/movie_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
              ),
              HomeAppBar(),
              SizedBox(
                height: 22,
              ),
              HomeBanar(),
              SizedBox(
                height: 80,
              ),
              HomeRecommendedSection(),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 51,
        width: 51,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(33), color: AppColors.mainColor),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            AppSvgImages.filterIcon,
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomNav(),
    );
  }
}
