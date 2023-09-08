import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.kWhite,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 10.h),
        child: Row(
          children: [
            Image.asset(AppAssets.koffer),
            SizedBox(width: 24.w),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Special Offers",
                      style: AppTypography.kLight16
                          .copyWith(color: AppColors.kblack),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      width: 29.w,
                      height: 29.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "😱",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  "We make sure you get the\noffer you need at best prices",
                  style: AppTypography.kVExtraLight12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
