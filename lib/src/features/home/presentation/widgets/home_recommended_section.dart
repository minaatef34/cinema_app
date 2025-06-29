import 'package:cinema_app/src/core/base/api_routes.dart';
import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_images.dart';
import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:cinema_app/src/features/home/presentation/manager/home_manager.dart';
import 'package:cinema_app/src/features/home/presentation/pages/movie_detailes.dart';
import 'package:cinema_app/src/shared_widgets/movie_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeRecommendedSection extends ConsumerStatefulWidget {
  const HomeRecommendedSection({super.key});

  @override
  ConsumerState<HomeRecommendedSection> createState() => _HomeRecommendedSectionState();
}

class _HomeRecommendedSectionState extends ConsumerState<HomeRecommendedSection> {
  List<MovieDetails> moviesDetails = [
    MovieDetails(AppImages.mov1, "SALAAR (part 1)"),
    MovieDetails(AppImages.mov2, "FLASH (2023)"),
    MovieDetails(AppImages.mov3, "AQUAMAN 2"),
  ];

  @override
  Widget build(BuildContext context) {
    final homeManager = ref.watch(homeManagerProvider);
    final movies = homeManager.homeResponses?.results;
    if (movies == null || movies.isEmpty) {
      return Center(child: CircularProgressIndicator());
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended Movies",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteColor,
                ),
              ),
              Text(
                "See All >",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.mainColor,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 252,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(39),
          ),
          child: ListView.separated(
            itemBuilder: (_, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
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
                        child: SizedBox(
                          height: 216,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(39),
                            child: Image.network(
                              ApiRoutes.imageUrl + (homeManager.homeResponses?.results?[index].backdropPath ?? ''),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 20,
                        bottom: 18,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: AppColors.nextIndicatorColor,
                          ),
                          child: Center(
                              child: SvgPicture.asset(
                            AppSvgImages.playIcon,
                            height: 24,
                            width: 24,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    homeManager.homeResponses?.results?[index].title ?? '',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            },
            scrollDirection: Axis.horizontal,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                endIndent: 10,
              );
            },
            itemCount: homeManager.homeResponses?.results?.length ?? 0,
          ),
        ),
      ],
    );
  }
}
