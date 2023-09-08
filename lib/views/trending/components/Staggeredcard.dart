import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/typography.dart';
import '../../../models/Staggeredmodel.dart';
import '../../shop/components/stars.dart';

class StaggeredCard extends StatelessWidget {
  final StaggeredModel item;
  const StaggeredCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164.w,
      decoration: BoxDecoration(
          color: AppColors.kWhite,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 0,
                offset: const Offset(0, 2)),
          ]),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              item.image,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style:
                      AppTypography.kLight12.copyWith(color: AppColors.kblack),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  item.description,
                  style: AppTypography.kExtraLight10
                      .copyWith(color: AppColors.kblack),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  item.price,
                  style:
                      AppTypography.kLight12.copyWith(color: AppColors.kblack),
                ),
                Row(
                  children: [
                    const Stars(),
                    Text(
                      item.rating,
                      style: AppTypography.kExtraLight10
                          .copyWith(color: AppColors.kgreayreview),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
