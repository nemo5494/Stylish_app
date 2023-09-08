import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/app_colors.dart';
import '../../../data/typography.dart';

class SortAndFilter extends StatelessWidget {
  final String text;
  final String icon;

  const SortAndFilter({required this.text, super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: AppColors.kWhite,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style:
                AppTypography.kExtraLight12.copyWith(color: AppColors.kblack),
          ),
          SizedBox(
            width: 4.w,
          ),
          SvgPicture.asset(icon)
        ],
      ),
    );
  }
}
