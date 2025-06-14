import 'package:cinema_app/src/features/home/presentation/widgets/home_app_bar.dart';
import 'package:cinema_app/src/features/home/presentation/widgets/home_banar_section.dart';
import 'package:cinema_app/src/features/home/presentation/widgets/home_recommended_section.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: kToolbarHeight),
          HomeAppBar(),
          SizedBox(height: 22),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeBanar(),
                  SizedBox(height: 80),
                  HomeRecommendedSection(),
                  SizedBox(height: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
