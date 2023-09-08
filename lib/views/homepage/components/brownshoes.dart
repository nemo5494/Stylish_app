import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

class BrownShoes extends StatelessWidget {
  const BrownShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 380.h,
      color: AppColors.kWhite,
      child: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4.h),
            Text('Sponserd',
                style:
                    AppTypography.kLight20.copyWith(color: AppColors.kblack)),
            Container(
              height: 320.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage(AppAssets.kbrownshoes),
                      fit: BoxFit.fill)),
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'up to 50% Off',
                  style:
                      AppTypography.kBold16.copyWith(color: AppColors.kblack),
                ),
                const Icon(Icons.arrow_forward_ios, size: 20)
              ],
            )
          ],
        ),
      ),
    );
  }
}
