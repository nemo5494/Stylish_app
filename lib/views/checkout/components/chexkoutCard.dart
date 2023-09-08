import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';
import 'package:stylish_project/models/checkoutmodel.dart';
import 'package:stylish_project/views/shop/components/stars.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({required this.item, super.key});
  final CheckoutModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes the position of the shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  item.image,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.title, style: AppTypography.kSemiBold14),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Variations :',
                            style: AppTypography.kLight12
                                .copyWith(color: AppColors.kblack),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(4.h),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.kgreydivider),
                                borderRadius: BorderRadius.circular(2.r)),
                            child: Text(
                              item.color1,
                              style: AppTypography.kLight10
                                  .copyWith(color: AppColors.kblack),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(4.h),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.kgreydivider),
                                borderRadius: BorderRadius.circular(2.r)),
                            child: Text(
                              item.color2,
                              style: AppTypography.kLight10
                                  .copyWith(color: AppColors.kblack),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Text(item.rating,
                              style: AppTypography.kLight12
                                  .copyWith(color: AppColors.kblack)),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Stars()
                        ],
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.h, vertical: 8.h),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.kgreydivider),
                                borderRadius: BorderRadius.circular(2.r)),
                            child: Text(
                              item.price,
                              style: AppTypography.kSemiBold16
                                  .copyWith(color: AppColors.kblack),
                            ),
                          ),
                          SizedBox(
                            width: 11.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.percentage,
                                  style: AppTypography.kLight10.copyWith(
                                      fontSize: 8.sp,
                                      color: AppColors.kprimary)),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(item.originalPrice,
                                  style: AppTypography.kLight14.copyWith(
                                      color: AppColors.kgreycheckout,
                                      decoration: TextDecoration.lineThrough)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Divider(
              thickness: 1,
              color: AppColors.kgreydivider,
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Order (1) :', style: AppTypography.kLight12),
                  Text(item.price, style: AppTypography.kSemiBold16),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
