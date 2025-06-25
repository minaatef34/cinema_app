import 'package:cinema_app/src/core/base/api_routes.dart';
import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:cinema_app/src/features/home/presentation/manager/home_manager.dart';
import 'package:cinema_app/src/features/home/presentation/pages/movie_detailes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBanar extends ConsumerWidget {
  const HomeBanar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final homeManager = ref.watch(homeManagerProvider);
    final movies = homeManager.homeResponses?.results;
    if (movies == null || movies.isEmpty) {
      return Center(child: CircularProgressIndicator());
    }

    final firstMovie = movies.first; // دا علشان لما نخزن نبعت داتا للصفحة التانية
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieDetailes(),
              ),
            );
          },
          child: Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(48), color: AppColors.whiteColor),
            child: Image.network(
              '${ApiRoutes.imageUrl}${homeManager.homeResponses?.results?.first.backdropPath ?? ''}',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 70,
          child: Container(
            height: 30,
            width: MediaQuery.of(context).size.width / 1.8,
            decoration: BoxDecoration(
              color: AppColors.nextIndicatorColor,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  homeManager.homeResponses?.results?.first.title ?? '',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.whiteColor),
                ),
                SvgPicture.asset(AppSvgImages.playIcon)
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -60,
          left: 10,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              color: AppColors.nextIndicatorColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 11.5,
                top: 12,
                bottom: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TRENDING",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        homeManager.homeResponses?.results?.first.title ?? '',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: homeManager.homeResponses?.results?.first.voteAverage?.toStringAsFixed(1) ?? 'N/A',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.mainColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: " . ",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: homeManager.homeResponses?.results?.first.originalLanguage ?? '',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                      ),
                      Text(
                        homeManager.homeResponses?.results?.first.releaseDate ?? '',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff323232),
                              Color(0xff767676),
                              Color(0xff363535),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Book",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "2D.3D.4DX",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
