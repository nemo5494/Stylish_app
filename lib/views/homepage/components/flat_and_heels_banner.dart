import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

class FlatAndHeelBanner extends StatelessWidget {
  final VoidCallback ontap;
  const FlatAndHeelBanner({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 171.h,
      color: AppColors.kWhite,
      child: Row(
        children: [
          Container(
              width: 11.w,
              height: 171.h,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [AppColors.kyellow, AppColors.klightyellow],
              ))),
          Container(
            width: 320.w,
            height: 155.h,
            color: AppColors.kgreaycontainer,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Image.asset(AppAssets.kheel),
                  SizedBox(width: 4.w),
                  Column(
                    children: [
                      SizedBox(height: 35.h),
                      Text('Flat and Heels',
                          style: AppTypography.kLight16
                              .copyWith(color: AppColors.kblack)),
                      Text(
                        'Stand a chance to get rewarded',
                        style: AppTypography.kExtraLight10
                            .copyWith(color: AppColors.klightblack),
                      ),
                      SizedBox(height: 10.h),
                      ElevatedButton(
                        onPressed: ontap,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.kpinkBUTTON,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Visit now',
                              style: AppTypography.kSemiBold12
                                  .copyWith(color: AppColors.kWhite),
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.arrow_forward,
                              size: 16,
                              color: AppColors.kWhite,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
