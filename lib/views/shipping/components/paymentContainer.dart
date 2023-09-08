import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

class paymentContainer extends StatelessWidget {
  const paymentContainer({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 59.h,
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        decoration: BoxDecoration(
          color: AppColors.kgreycontainer,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
            ),
            Text('*********2109',
                style: AppTypography.kLight16
                    .copyWith(color: AppColors.kgreytextpay, fontSize: 15.sp))
          ],
        ));
  }
}
