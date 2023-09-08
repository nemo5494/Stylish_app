import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

class Button extends StatelessWidget {
  const Button({required this.text, required this.ontap, super.key});
  final String text;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.kprimary, fixedSize: Size(317.w, 55.h)),
        onPressed: ontap,
        child: Text(
          text,
          style: AppTypography.kSemiBold20.copyWith(color: Colors.white),
        ));
  }
}
