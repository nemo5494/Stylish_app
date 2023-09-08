import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:stylish_project/data/typography.dart';

import '../../../data/app_colors.dart';

class GoToCart extends StatelessWidget {
  final List<Color> gradientColor;
  final List<Color> gradientColor1;
  final VoidCallback ontap;
  final String text;
  final String Icon;
  const GoToCart(
      {super.key,
      required this.gradientColor,
      required this.text,
      required this.ontap,
      required this.gradientColor1,
      required this.Icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ElevatedButton(
            onPressed: ontap,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            child: Container(
              width: 136.w,
              height: 36.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: gradientColor,
                  )),
              child: Center(
                  child: Text(text,
                      style: AppTypography.kLight16
                          .copyWith(color: AppColors.kWhite))),
            )),
        Positioned(
            right: 120.w,
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: gradientColor1,
                  )),
              child: SvgPicture.asset(Icon, width: 15.w, height: 21.h),
            ))
      ],
    );
  }
}
