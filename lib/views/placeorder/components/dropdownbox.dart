import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

class DropDown extends StatelessWidget {
  final String text1;
  final String text2;
  const DropDown({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            padding:
                EdgeInsets.only(left: 6.w, right: 23.w, top: 4.h, bottom: 4.h),
            width: 86.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors.kwelcome),
            child: Row(
              children: [
                Text(text1,
                    style: AppTypography.kExtraLight14
                        .copyWith(color: AppColors.kblack)),
                SizedBox(width: 7.w),
                Text(text2,
                    style: AppTypography.kLight14
                        .copyWith(color: AppColors.kblack))
              ],
            )),
        Positioned(
          left: 70.5,
          child: Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.kblack,
            size: 18,
          ),
        )
      ],
    );
  }
}
