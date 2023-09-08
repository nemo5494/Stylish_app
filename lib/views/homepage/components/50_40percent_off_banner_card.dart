import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_assets.dart';
import '../../../data/app_colors.dart';
import '../../../data/typography.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.kbanner,
            ),
            fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14, top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '50-40% OFF',
              style: AppTypography.kBold20.copyWith(color: AppColors.kWhite),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Now in (product) \nAll colours',
              style:
                  AppTypography.kExtraLight12.copyWith(color: AppColors.kWhite),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(8.h),
                width: 100.w,
                height: 32.h,
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Shop Now',
                      style: AppTypography.kSemiBold12
                          .copyWith(color: AppColors.kWhite),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: AppColors.kWhite,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
