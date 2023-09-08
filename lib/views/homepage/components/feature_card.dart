import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/models/feature_banner_model.dart';

class FeatureCard extends StatelessWidget {
  final FeatureClass feature;
  const FeatureCard({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
            radius: 30, //isko set kr lena
            backgroundImage: AssetImage(feature.image)),
        SizedBox(height: 4.h),
        Text(feature.text),
      ],
    );
  }
}
