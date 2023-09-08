import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/app_assets.dart';

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.kstar),
        SizedBox(
          width: 2.w,
        ),
        SvgPicture.asset(AppAssets.kstar),
        SizedBox(
          width: 2.w,
        ),
        SvgPicture.asset(AppAssets.kstar),
        SizedBox(
          width: 2.w,
        ),
        SvgPicture.asset(AppAssets.kstar),
        SizedBox(
          width: 2.w,
        ),
        SvgPicture.asset(AppAssets.khalfstar),
        SizedBox(
          width: 4.w,
        ),
      ],
    );
  }
}
