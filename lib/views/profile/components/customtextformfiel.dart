import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/typography.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final bool isPassword;
  final String label;
  const CustomTextFormField({
    super.key,
    this.controller,
    this.isPassword = false,
    required this.label,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label,
            style:
                AppTypography.kExtraLight12.copyWith(color: AppColors.kblack)),
        SizedBox(height: 15.h),
        TextFormField(
          controller: widget.controller,
          obscureText: widget.isPassword ? isObscure : false,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(14.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide: BorderSide(color: AppColors.kgreaborder1, width: 1.w),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide:
                  BorderSide(color: AppColors.kgreaborder1, width: 1.0.w),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide: BorderSide(color: AppColors.kprimary, width: 1.0.w),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide: BorderSide(color: AppColors.kprimary, width: 1.0.w),
            ),
          ),
          style: AppTypography.kSemiBold14.copyWith(color: AppColors.kblack),
        )
      ],
    );
  }
}
