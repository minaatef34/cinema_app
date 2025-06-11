import 'package:cinema_app/src/core/services/package_info/package_info_service_impl.dart';
import 'package:cinema_app/src/core/theme/app_colors.dart';
import 'package:cinema_app/src/core/theme/app_images.dart';
import 'package:cinema_app/src/features/signin/presentation/pages/sign_in.dart';
import 'package:cinema_app/src/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: kToolbarHeight + 20,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.whiteColor,
              backgroundImage: AssetImage(AppImages.profileImage),

            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "User Name",
              style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: AppColors.whiteColor),
            ),
            Text(
              "Example@gmail.com",
              style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: AppColors.dividerColor),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: AppButton(
                    text: "Log Out",
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SignIn()), (context) => false);
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
