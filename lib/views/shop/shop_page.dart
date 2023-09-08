import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';
import 'package:stylish_project/models/Staggeredmodel.dart';
import 'package:stylish_project/views/placeorder/placeorder.dart';
import 'package:stylish_project/views/shop/components/Carouselbanner.dart';
import 'package:stylish_project/views/shop/components/nikecard.dart';

import '../../data/app_assets.dart';
import '../checkout/checkout.dart';
import '../homepage/components/sort_container.dart';

import 'components/UKsize.dart';
import 'components/gotoCart.dart';
import 'components/returnpolicy.dart';
import 'components/similarcard.dart';
import 'components/stars.dart';
import 'package:readmore/readmore.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final CarouselController _carouselController = CarouselController();
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.kwelcome,
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
          actions: [
            Container(
                margin: EdgeInsets.only(right: 16.w),
                height: 32.h,
                width: 32.w,
                padding: EdgeInsets.all(7.h),
                decoration: BoxDecoration(
                  color: AppColors.kGreycart,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppAssets.kcartAppbar))
          ]),
      backgroundColor: AppColors.kwelcome,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                CarouselSlider(
                    carouselController: _carouselController,
                    items: const [
                      CarouselBanner(),
                      CarouselBanner(),
                      CarouselBanner(),
                      CarouselBanner()
                    ],
                    options: CarouselOptions(
                        height: 189.h,
                        onPageChanged: (value, reason) {
                          setState(() {
                            _currentIndex = value;
                          });
                        },
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction:
                            1, //each item takes up the full width of the viewport.
                        initialPage: 0)),
                Positioned(
                    right: 12.w,
                    top: 86.h,
                    child: InkWell(
                      onTap: () {
                        _carouselController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: RadialGradient(
                              colors: [
                                AppColors.kgrey1,
                                AppColors.kgrey2,
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(
                              8.0), // Adjust the padding as needed
                          child: SvgPicture.asset(AppAssets.kforwardArrow),
                        ),
                      ),
                    ))
              ]),
              SizedBox(height: 12.h),
              Center(
                  child: DotsIndicator(dotsCount: 4, position: _currentIndex)),
              SizedBox(height: 16.h),
              Text('Size: 7UK',
                  style: AppTypography.kSemiBold14
                      .copyWith(color: AppColors.kblack)),
              SizedBox(height: 12.h),
              const UKsize(),
              SizedBox(height: 16.h),
              Text('NIke Sneakers',
                  style: AppTypography.kSemiBold20
                      .copyWith(color: AppColors.kblack)),
              SizedBox(height: 8.h),
              Text('Vision Alta Men\’s Shoes Size (All Colours)',
                  style: AppTypography.kExtraLight14),
              SizedBox(height: 8.h),
              Row(
                children: [
                  const Stars(),
                  SizedBox(width: 8.w),
                  Text('56,890',
                      style: AppTypography.kLight14
                          .copyWith(color: AppColors.kgreayreview)),
                ],
              ),
              SizedBox(height: 8.h),
              Row(children: [
                Text(
                  '2,999',
                  style: AppTypography.kExtraLight14.copyWith(
                      color: AppColors.kgreaymedium,
                      decoration: TextDecoration
                          .lineThrough, // Add strikethrough decoration
                      decorationColor:
                          AppColors.kgrey1, // Set the strikethrough color
                      decorationThickness:
                          2.0 // Set the strikethrough thickness
                      ),
                ),
                SizedBox(width: 8.h),
                Text('1,500', style: AppTypography.kLight14),
                SizedBox(width: 8.h),
                Text('50% off',
                    style: AppTypography.kSemiBold14
                        .copyWith(color: AppColors.kpinksize))
              ]),
              SizedBox(height: 8.h),
              Text(
                'Product Details',
                style: AppTypography.kLight14,
              ),
              ReadMoreText(
                'Perhaps the most iconic sneaker of all-time, this original "Chicago" colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the /n Perhaps the most iconic sneaker of all-time, this original "Chicago" colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ',
                trimLines: 5,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'More',
                trimExpandedText: 'Show less',
                style: AppTypography.kExtraLight12, //style of 'CONTENT'
                moreStyle: AppTypography.kExtraLight12 //style of 'MORE'
                    .copyWith(color: AppColors.kpinksize),
                lessStyle: AppTypography.kExtraLight12 //style of 'LESS'
                    .copyWith(color: AppColors.kpinksize),
              ),
              SizedBox(height: 8.h),
              const ReturnPolicy(),
              SizedBox(height: 14.h),
              Row(
                children: [
                  GoToCart(
                      gradientColor: [AppColors.kblue1, AppColors.kblue2],
                      text: 'Go to Cart',
                      Icon: AppAssets.kgotocart,
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlaceOrder()));
                      },
                      gradientColor1: [
                        AppColors.kblue3,
                        AppColors.kblue3,
                        AppColors.kblue3,
                        AppColors.kblue4
                      ]),
                  SizedBox(width: 12.w),
                  GoToCart(
                      gradientColor: [AppColors.kgreen1, AppColors.kgreen2],
                      text: 'Buy Now',
                      Icon: AppAssets.kbuynow,
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (index) => Checkout()));
                      },
                      gradientColor1: [AppColors.kgreen3, AppColors.kgreen4])
                ],
              ),
              SizedBox(height: 14.h),
              Container(
                  height: 72.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.kpinkdelivery,
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 26.w, vertical: 11.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Delivery in',
                                style: AppTypography.kSemiBold14),
                            Text('1 within Hour',
                                style: AppTypography.kSemiBold21),
                          ]))),
              SizedBox(height: 16.h),
              Row(
                children: [
                  SimilarCard(
                      icon: AppAssets.keyecard,
                      onTap: () {},
                      text: 'View Similar'),
                  SizedBox(width: 3.w),
                  SimilarCard(
                      icon: AppAssets.kcompare,
                      onTap: () {},
                      text: 'Add to Compare'),
                ],
              ),
              SizedBox(height: 20.h),
              Text('Similar To', style: AppTypography.kSemiBold20),
              SizedBox(height: 9.h),
              Row(
                children: [
                  Text('282+ Iteams', style: AppTypography.kSemiBold18),
                  SizedBox(width: 86.w),
                  SortAndFilter(icon: AppAssets.ksort, text: 'Sort'),
                  SizedBox(width: 12.w),
                  SortAndFilter(icon: AppAssets.kfilter, text: 'Filter')
                ],
              ),
              SizedBox(width: 18.h),
              SizedBox(
                height: 249.h,
                child: ListView.separated(
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return NikeCard(
                      item: nikemodel[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 12.w,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
