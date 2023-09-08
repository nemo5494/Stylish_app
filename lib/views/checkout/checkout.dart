import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish_project/models/checkoutmodel.dart';
import 'package:stylish_project/views/checkout/components/adress.dart';
import 'package:stylish_project/views/checkout/components/chexkoutCard.dart';

import '../../data/app_assets.dart';
import '../../data/app_colors.dart';
import '../../data/typography.dart';

class Checkout extends StatelessWidget {
  Checkout({super.key});
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded, color: AppColors.kblack)),
        centerTitle: true,
        title: Text('Checkout',
            style: AppTypography.kSemiBold18.copyWith(color: AppColors.kblack)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 18.h),
          Divider(
            thickness: 1,
            color: AppColors.kgreydivider1,
          ),
          SizedBox(height: 18.h),
          Row(
            children: [
              SvgPicture.asset(AppAssets.klocationcheckout),
              SizedBox(width: 8.w),
              Text('Delivery Address', style: AppTypography.kSemiBold14)
            ],
          ),
          SizedBox(height: 10.h),
          const Adress(),
          SizedBox(height: 24.h),
          Text('Shopping List', style: AppTypography.kSemiBold14),
          SizedBox(height: 10.h),
          RawScrollbar(
            thumbVisibility: true,
            thickness: 20.0,
            child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 14.w),
                itemCount: checkoutproducts.length,
                itemBuilder: (context, index) {
                  return CheckoutCard(
                    item: checkoutproducts[index],
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
