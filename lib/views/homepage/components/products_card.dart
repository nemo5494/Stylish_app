import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';

import '../../../models/products_model.dart';

class ProductCard extends StatelessWidget {
  final products_model item;
  const ProductCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.kWhite,
      ),
      height: 241.h,
      width: 170.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: AssetImage(item.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          if (item.description?.isNotEmpty ==
              true) // Check if description is not null and not empty
            SizedBox(height: 8.h),
          Text(
            item.text,
            style: AppTypography.kLight12.copyWith(color: AppColors.kblack),
          ),
          SizedBox(
            height: 4.h,
          ),
          if (item.description?.isNotEmpty ==
              true) // Check if description is not null and not empty
            Text(
              item.description ?? '',
              style:
                  AppTypography.kExtraLight10.copyWith(color: AppColors.kblack),
            ),
          SizedBox(
            height: 4.h,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              item.newprice,
              style: AppTypography.kLight12.copyWith(color: AppColors.kblack),
            ),
          ),
          Row(
            children: [
              Text(
                item.oldprice,
                style: AppTypography.kVExtraLight12.copyWith(
                  color: AppColors.kgrey1,
                  decoration: TextDecoration
                      .lineThrough, // Add strikethrough decoration
                  decorationColor:
                      AppColors.kgrey1, // Set the strikethrough color
                  decorationThickness: 2.0, // Set the strikethrough thickness
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                item.percentage,
                style: AppTypography.kExtraLight10
                    .copyWith(color: AppColors.klight_red),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
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
            ],
          ),
        ],
      ),
    );
  }
}
