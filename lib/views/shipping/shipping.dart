import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';
import 'package:stylish_project/views/shipping/components/paymentContainer.dart';
import 'package:stylish_project/widgets/button.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({super.key});

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.kblack,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Checkout',
          style: AppTypography.kSemiBold18.copyWith(color: AppColors.kblack),
        ),
      ),
      body: Column(
        children: [
          Divider(color: AppColors.kgreydivider1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 17.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order',
                        style: AppTypography.kLight18
                            .copyWith(color: AppColors.kgreaytext)),
                    Text('₹ 7,000',
                        style: AppTypography.kLight18
                            .copyWith(color: AppColors.kgreaytext)),
                  ],
                ),
                SizedBox(height: 18.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping',
                        style: AppTypography.kLight18
                            .copyWith(color: AppColors.kgreaytext)),
                    Text('₹ 30',
                        style: AppTypography.kLight18
                            .copyWith(color: AppColors.kgreaytext)),
                  ],
                ),
                SizedBox(height: 18.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',
                        style: AppTypography.kLight18
                            .copyWith(color: AppColors.kblacktext)),
                    Text('₹ 7,030',
                        style: AppTypography.kLight18
                            .copyWith(color: AppColors.kblacktext)),
                  ],
                ),
                SizedBox(height: 22.h),
                Divider(color: AppColors.kgreaborder, thickness: 1),
                SizedBox(height: 28.h),
                Text('Payment',
                    style: AppTypography.kLight18
                        .copyWith(color: AppColors.kblacktext1)),
                SizedBox(height: 10.h),
                paymentContainer(image: AppAssets.kvisa),
                SizedBox(height: 25.h),
                paymentContainer(image: AppAssets.kpaypal),
                SizedBox(height: 25.h),
                paymentContainer(image: AppAssets.kmaestro),
                SizedBox(height: 25.h),
                paymentContainer(image: AppAssets.kapple),
                SizedBox(height: 25.h),
                Button(
                  text: 'Continue',
                  ontap: () {
                    showDialog(
                      context: context,
                      builder: ((context) {
                        return Center(
                          child: Container(
                            color: AppColors.kWhite,
                            height: 201.h,
                            width: 331.w,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset(AppAssets.kstarcircle),
                                SvgPicture.asset(AppAssets.ktick),
                                Positioned(
                                  top: 149.h,
                                  child: Text(
                                    "Payment done successfully.",
                                    style: AppTypography.kSemiBold14.copyWith(
                                      color: AppColors.kblack,
                                      decoration: TextDecoration
                                          .none, // Remove underline
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
