import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/typography.dart';

import '../../../data/app_colors.dart';

class ReturnPolicy extends StatelessWidget {
  const ReturnPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 97.w,
          height: 24.h,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.kgreyrating),
              borderRadius: BorderRadius.circular(8.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.klocation),
              Text(
                'Nearest Store',
                style: AppTypography.kLight10
                    .copyWith(color: AppColors.kgreyrating),
              )
            ],
          ),
        ),
        SizedBox(width: 8.w),
        Container(
          width: 46.w,
          height: 24.h,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.kgreyrating),
              borderRadius: BorderRadius.circular(8.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.klock1),
              Text(
                'VIP',
                style: AppTypography.kLight10
                    .copyWith(color: AppColors.kgreyrating),
              )
            ],
          ),
        ),
        SizedBox(width: 8.w),
        Container(
          width: 96.w,
          height: 24.h,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.kgreyrating),
              borderRadius: BorderRadius.circular(8.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.krefund),
              Text(
                'Return policy',
                style: AppTypography.kLight10
                    .copyWith(color: AppColors.kgreyrating),
              )
            ],
          ),
        ),
      ],
    );
  }
}
