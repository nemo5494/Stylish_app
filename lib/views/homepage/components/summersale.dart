import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

import '../../../data/app_assets.dart';

class SummerSale extends StatelessWidget {
  final VoidCallback ontap;
  const SummerSale({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kWhite,
      height: 270.h,
      width: double.infinity,
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: 204.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage(AppAssets.ksummersale),
                      fit: BoxFit.fill),
                  color: AppColors.kWhite)),
          SizedBox(height: 8.h),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('New Arrivals',
                          style: AppTypography.kLight20
                              .copyWith(color: AppColors.kblack)),
                      Text('Summer\’ 25 Collections',
                          style: AppTypography.kExtraLight14
                              .copyWith(color: AppColors.kblack))
                    ]),
                SizedBox(width: 44.w),
                ElevatedButton(
                    onPressed: ontap,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.kpinkBUTTON,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Row(children: [
                      Text(
                        'Visit now',
                        style: AppTypography.kSemiBold12
                            .copyWith(color: AppColors.kWhite),
                      ),
                      SizedBox(width: 4.w),
                      Icon(
                        Icons.arrow_forward,
                        size: 16,
                        color: AppColors.kWhite,
                      )
                    ]))
              ]))
        ],
      ),
    );
  }
}
