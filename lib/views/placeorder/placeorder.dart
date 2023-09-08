import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/views/placeorder/components/dropdownbox.dart';

import '../../data/typography.dart';
import '../shipping/shipping.dart';
import 'components/custombottomsheet.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon:
                  Icon(Icons.arrow_back_ios_rounded, color: AppColors.kblack)),
          centerTitle: true,
          title: Text('Shopping Bag',
              style:
                  AppTypography.kSemiBold16.copyWith(color: AppColors.kblack)),
          actions: [SvgPicture.asset(AppAssets.kheart), SizedBox(width: 22.w)],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 38.h),
              Stack(
                children: [
                  Container(
                    height: 153.h,
                    width: double.infinity,
                    color: AppColors.kWhite,
                  ),
                  Container(
                    width: 123.w,
                    height: 153.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        image: DecorationImage(
                          image: AssetImage(
                              AppAssets.kkurtalarge), // Use AssetImage here
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                      left: 143.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Women’s Casual Wear',
                            style: AppTypography.kSemiBold16
                                .copyWith(color: AppColors.kblack),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "Checked Single-Breasted \nBlazer",
                            style: AppTypography.kExtraLight12.copyWith(
                              color: AppColors.kblack,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            children: [
                              const DropDown(text1: 'Size', text2: '42'),
                              SizedBox(width: 12.w),
                              const DropDown(text1: 'Qty', text2: '1')
                            ],
                          ),
                          SizedBox(height: 12.h),
                          RichText(
                              text: TextSpan(
                            style: const TextStyle(),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Delivery by ',
                                  style: AppTypography.kExtraLight13
                                      .copyWith(color: AppColors.kblack)),
                              TextSpan(
                                  text: ' 10 May 2XXX',
                                  style: AppTypography.kSemiBold16
                                      .copyWith(color: AppColors.kblack)),
                            ],
                          ))
                        ],
                      ))
                ],
              ),
              SizedBox(height: 54.h),
              Row(
                children: [
                  SvgPicture.asset(AppAssets.kcoupon),
                  SizedBox(width: 10.w),
                  Text("Apply Coupons",
                      style: AppTypography.kLight16
                          .copyWith(color: AppColors.kblack)),
                  SizedBox(width: 110.w),
                  TextButton(
                      onPressed: () {},
                      child: Text("Select",
                          style: AppTypography.kSemiBold14
                              .copyWith(color: AppColors.kprimary)))
                ],
              ),
              SizedBox(height: 36.h),
              Divider(
                color: AppColors.kgreydivider2,
                thickness: 1,
              ),
              SizedBox(height: 35.h),
              Text("Order Payment Details", style: AppTypography.kLight17),
              SizedBox(height: 26.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order Amounts", style: AppTypography.kExtraLight16),
                  Text("₹ 7,000.00", style: AppTypography.kSemiBold14),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Convenience",
                          style: AppTypography.kExtraLight16
                              .copyWith(color: AppColors.kblack)),
                      SizedBox(width: 14.w),
                      TextButton(
                          onPressed: () {},
                          child: Text("Know More",
                              style: AppTypography.kSemiBold12
                                  .copyWith(color: AppColors.kprimary))),
                      SizedBox(width: 26.w),
                      TextButton(
                          onPressed: () {},
                          child: Text("Apply Coupon",
                              style: AppTypography.kSemiBold12
                                  .copyWith(color: AppColors.kprimary)))
                    ],
                  )
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Fee", style: AppTypography.kExtraLight14),
                  SizedBox(width: 14.w),
                  Text("Free",
                      style: AppTypography.kSemiBold14
                          .copyWith(color: AppColors.kprimary)),
                ],
              ),
              SizedBox(height: 41.h),
              Divider(
                thickness: 1,
                color: AppColors.kgreydivider2,
              ),
              SizedBox(height: 29.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order Total", style: AppTypography.kLight17),
                  Text("₹ 7,000.00", style: AppTypography.kSemiBold14),
                ],
              ),
              SizedBox(height: 10.h),
              Row(children: [
                Text("EMI Available", style: AppTypography.kExtraLight16),
                SizedBox(width: 22.w),
                TextButton(
                    onPressed: () {},
                    child: Text("Details",
                        style: AppTypography.kSemiBold12
                            .copyWith(color: AppColors.kprimary)))
              ]),
              SizedBox(height: 150.h),
            ]),
          ),
        ),
        bottomSheet: BottomSheetCustom(
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const ShippingPage())));
          },
        ));
  }
}
