import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

class KSearchField extends StatelessWidget {
  const KSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
        fillColor: AppColors.kWhite,
        filled: true,
        hintText: 'Search any Product..',
        hintStyle:
            AppTypography.kExtraLight14.copyWith(color: AppColors.kgrey1),
        prefixIcon: SvgPicture.asset(AppAssets.ksearch),
        prefixIconConstraints: BoxConstraints(minWidth: 20.w, minHeight: 20.h),
        suffixIcon: SvgPicture.asset(AppAssets.kmic),
        suffixIconConstraints: BoxConstraints(minWidth: 20.w, minHeight: 20.h),
        //borders
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide.none),
      ),
    );
  }
}
