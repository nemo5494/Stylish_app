import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

class SimilarCard extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onTap;

  const SimilarCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: SvgPicture.asset(icon),
      label: Text(text, style: AppTypography.kLight14),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.kWhite, // Button background color
        foregroundColor: AppColors.kblack, // Text and icon color
        side: BorderSide(
          color: AppColors.kgreaborder, // Border color
          width: 1.0, // Border width
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
