import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_colors.dart';

import '../../../data/typography.dart';

class BottomSheetCustom extends StatelessWidget {
  final VoidCallback ontap;
  const BottomSheetCustom({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 146.h,
        decoration: BoxDecoration(
            color: AppColors.kgreybottomsheet,
            border: Border.all(width: 1, color: AppColors.kgreydivider2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.r),
                topRight: Radius.circular(24.r))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 38.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Column(
                children: [
                  Text("₹ 7,000.00",
                      style: AppTypography.kSemiBold14
                          .copyWith(color: AppColors.kblack)),
                  SizedBox(height: 6.h),
                  Text("View Details",
                      style: AppTypography.kSemiBold12
                          .copyWith(color: AppColors.kprimary)),
                ],
              ),
            ),
            SizedBox(width: 28.w),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.kprimary,
                    fixedSize: Size(219.w, 48.h)),
                onPressed: ontap,
                child: Text(
                  'Proceed to Payment',
                  style: AppTypography.kVExtraLight17
                      .copyWith(color: Colors.white),
                ))
          ]),
        ));
  }
}
