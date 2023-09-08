import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

class OfferBanner extends StatelessWidget {
  final Color bannerColor;
  final String title;
  final String description;
  final VoidCallback ontap;
  final IconData icon;

  const OfferBanner({
    super.key,
    required this.bannerColor,
    required this.title,
    required this.icon,
    required this.description,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: bannerColor,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTypography.kLight16.copyWith(color: AppColors.kWhite),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Icon(
                    icon,
                    size: 16,
                    color: AppColors.kWhite,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    description,
                    style: AppTypography.kExtraLight12
                        .copyWith(color: AppColors.kWhite),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: ontap,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'View All',
                    style: AppTypography.kSemiBold12
                        .copyWith(color: AppColors.kWhite),
                  ),
                  SizedBox(width: 4.w),
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
    );
  }
}
