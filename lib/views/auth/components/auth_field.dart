import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';

class AuthField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String icon;
  final bool isPassword;
  final String? Function(String?)? validator;
  const AuthField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.isPassword = false,
    this.validator,
  }) : super(key: key);

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  bool isObsure = true;
  @override
  Widget build(context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword ? isObsure : false,
      decoration: InputDecoration(
          prefix: SvgPicture.asset(widget.icon),
          hintText: widget.hintText,
          fillColor: AppColors.kgreytextfield,
          filled: true,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObsure = !isObsure;
                    });
                  },
                  icon: SvgPicture.asset(
                      isObsure ? AppAssets.keyeoff : AppAssets.kVisiblityOn),
                )
              : null,
          iconColor: AppColors.kgreyicon,

          //borders
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColors.kGreyborder)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColors.kGreyborder)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: Colors.red)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColors.kGreyborder))),
    );
  }
}
