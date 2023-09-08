import 'package:flutter/material.dart';

import '../data/app_colors.dart';
import '../data/typography.dart';

class CustomtextButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final double? fontSize;
  final Color? color;
  const CustomtextButton(
      {super.key, this.onTap, required this.text, this.fontSize, this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style:
            AppTypography.kLight12.copyWith(color: color ?? AppColors.kprimary),
      ),
    );
  }
}
