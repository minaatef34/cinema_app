import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_images.dart';
import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:cinema_app/src/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MovieDetailes extends StatefulWidget {
  const MovieDetailes({super.key});

  @override
  State<MovieDetailes> createState() => _MovieDetailesState();
}

class _MovieDetailesState extends State<MovieDetailes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 413,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55)),
                color: AppColors.whiteColor),
            child: Image.asset(
              AppImages.homeBanar,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 51),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(7),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.nextIndicatorColor,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            AppSvgImages.arrowBack,
                            height: 17.5,
                            width: 8.75,
                            colorFilter: ColorFilter.mode(
                                AppColors.whiteColor, BlendMode.srcIn),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.nextIndicatorColor,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          AppSvgImages.moreVert,
                          colorFilter: ColorFilter.mode(
                              AppColors.whiteColor, BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 160),
              Padding(
                padding: EdgeInsets.only(left: 17, right: 20),
                child: Container(
                  height: 480,
                  width: 356,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(48)),
                    color: AppColors.nextIndicatorColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'EVIL DEAD RISE',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('HORHOR'),
                                    SizedBox(width: 5),
                                    Text('2D.3D.4DX',
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  gradient: LinearGradient(colors: [
                                    Color(0xff1F1F1F),
                                    Color(0xff333333),
                                  ])),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Watch Trailer",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: AppColors.whiteColor),
                                  ),
                                  SvgPicture.asset(AppSvgImages.playIcon)
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(
                          color: AppColors.greyColor,
                          height: 1,
                          thickness: 2,
                        ),
                        SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Censor Rating'),
                                Text('A'),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Duration'),
                                Text('1hr:38min'),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Release data'),
                                Text('21 April 2023'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Available in lanuages'),
                            Text('English'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(
                          color: AppColors.greyColor,
                          height: 1,
                          thickness: 2,
                        ),
                        SizedBox(height: 19),
                        Text(
                          'Story Plot',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Text(
                          'Evil Dead is a 2013 American supernatural horror film directed by Fede Álvarez who co-wrote the screenplay with Rodo Sayagues. Dubbed a "re-imagining" of ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13),
                        ),
                        SizedBox(height: 10),
                        Divider(
                          color: AppColors.greyColor,
                          height: 1,
                          thickness: 2,
                        ),
                        SizedBox(height: 19),
                        Text(
                          'Cast',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 9),
                        SizedBox(
                          height: 70,
                          child: ListView.separated(
                              physics: ScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => ClipRRect(
                                    borderRadius: BorderRadius.circular(17),
                                    child: Icon(
                                      Icons.image,
                                      size: 70,
                                    ),
                                  ),
                              separatorBuilder: (context, index) => SizedBox(
                                    width: 9,
                                  ),
                              itemCount: 5),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 36, top: 15, bottom: 6),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 11, vertical: 7),
                  height: 76,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                    color: AppColors.nextIndicatorColor,
                  ),
                  child: AppButton(
                    text: 'Book Tickets',
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
