import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_images.dart';
import 'package:cinema_app/src/core/theme/app_svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBanar extends StatelessWidget {
  const HomeBanar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(48), color: AppColors.whiteColor),
          child: Image.asset(
            AppImages.homeBanar,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 70,
          child: Container(
            height: 30,
            width: 120,
            decoration: BoxDecoration(
              color: AppColors.nextIndicatorColor,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Watch Trailer",
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
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(48), color: AppColors.nextIndicatorColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TRENDING",
                        style:
                        TextStyle(fontSize: 12, color: AppColors.whiteColor, fontWeight: FontWeight.w500),
                      ),
                      Text("EVIL DEAD RISE",
                          style: TextStyle(
                              fontSize: 16, color: AppColors.whiteColor, fontWeight: FontWeight.w600)),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "A",
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.mainColor, fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: " . ",
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: "ENGLISH",
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                        ]),
                      ),
                      Text("HORHOR",
                          style: TextStyle(
                              fontSize: 14, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(colors: [
                              Color(0xff323232),
                              Color(0xff767676),
                              Color(0xff363535),
                            ])),
                        child: Center(
                          child: Text(
                            "Book",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.whiteColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "2D.3D.4DX",
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.whiteColor),
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
