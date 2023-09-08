import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';

import '../../../data/typography.dart';

class Adress extends StatelessWidget {
  const Adress({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 79.h,
          padding: EdgeInsets.all(12.h),
          decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius: BorderRadius.circular(6.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 6,
                offset:
                    const Offset(0, 3), // changes the position of the shadow
              ),
            ],
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Address :', style: AppTypography.kLight12),
                  Text(
                    "216 St Paul's Rd, London N1 2LL, UK \nContact : +44-784232",
                    style: AppTypography.kExtraLight12,
                  ),
                ],
              ),
              Positioned(
                  left: 200.w, child: SvgPicture.asset(AppAssets.keditt)),
            ],
          ),
        ),
        SizedBox(width: 12.w),
        Container(
            height: 79.h,
            padding: EdgeInsets.symmetric(vertical: 27.h, horizontal: 27.h),
            decoration: BoxDecoration(
              color: AppColors.kWhite,
              borderRadius: BorderRadius.circular(6.r),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 6),
                  blurRadius: 8,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                ),
              ],
            ),
            child: SvgPicture.asset(AppAssets.kaddsymbol)),
      ],
    );
  }
}
