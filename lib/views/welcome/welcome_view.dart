import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

import 'package:stylish_project/views/landingpage/landingpage.dart';
import 'package:stylish_project/widgets/button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double
              .infinity, //expand to take up as much available horizontal space as possible
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit
                      .fill, //stretched (both horizontally and vertically) to completely fill the available space
                  image: AssetImage(AppAssets.kclothes))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 362.h,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.8)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: Column(
              children: [
                SizedBox(
                  height: 70.h,
                ),
                Text(
                  'You want \nAuthentic, here \nyou go!',
                  style: AppTypography.kSemiBold34
                      .copyWith(color: AppColors.kWhite),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 14.h,
                ),
                Text(
                  'Find it here, buy it now!',
                  style: AppTypography.kExtraLight14
                      .copyWith(color: AppColors.kwelcome),
                ),
                SizedBox(
                  height: 44.h,
                ),
                Button(
                    text: 'Get Started',
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LandingPage()));
                    })
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
