import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/models/feature_banner_model.dart';
import 'package:stylish_project/views/homepage/components/50_40percent_off_banner_card.dart';
import 'package:stylish_project/views/homepage/components/feature_card.dart';
import 'package:stylish_project/views/homepage/components/sort_container.dart';
import 'package:stylish_project/views/homepage/components/textfield.dart';
import '../../data/typography.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../models/products_model.dart';
import '../profile/profile._page.dart';
import 'components/brownshoes.dart';
import 'components/flat_and_heels_banner.dart';
import 'components/products_card.dart';
import 'components/offer_banner.dart';
import 'components/deal_and_specialoffer.dart';
import 'components/summersale.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kwelcome,
        appBar: AppBar(
            backgroundColor: AppColors.kwelcome,
            elevation: 0,
            leading: IconButton(
                onPressed: () {}, icon: SvgPicture.asset(AppAssets.kbars)),
            centerTitle: true,
            title: SizedBox(
                width: 111.w,
                height: 31.h,
                child: Image.asset(AppAssets.klogo)),
            actions: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ));
                  },
                  child: Image.asset(AppAssets.kdp)),
              const SizedBox(width: 12)
            ]),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 26.h),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const KSearchField()),
          SizedBox(height: 17.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              children: [
                Text('All Featured',
                    style: AppTypography.kSemiBold18
                        .copyWith(color: AppColors.kblack)),
                const Spacer(),
                SortAndFilter(text: 'Sort', icon: AppAssets.ksort),
                SizedBox(
                  width: 12.w,
                ),
                SortAndFilter(text: 'Filter', icon: AppAssets.kfilter),
              ],
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            height: 110.h,
            color: AppColors.kWhite,
            padding: EdgeInsets.only(left: 24.w, top: 10.h, bottom: 10.h),
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 16.w),
              itemCount: featuremodel.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return FeatureCard(feature: featuremodel[index]);
              }),
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: CarouselSlider(
                  carouselController: _carouselController,
                  // prefer builder here
                  items: const [
                    BannerCard(),
                    BannerCard(),
                    BannerCard(),
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
                    initialPage: 0,
                  ))),
          SizedBox(height: 12.h),
          DotsIndicator(dotsCount: 3, position: _currentIndex),
          SizedBox(height: 16.h),
          //first offer banner
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: OfferBanner(
                  title: 'Deal of the Day',
                  description: '22h 55m 20s remaining',
                  bannerColor: AppColors.kbllue,
                  icon: Icons.alarm,
                  ontap: () {})),
          SizedBox(height: 16.h),
          SizedBox(
              height: 245.h,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 12.w),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16.w),
                  itemBuilder: ((context, index) {
                    return ProductCard(item: productsList1[index]);
                  }),
                  itemCount: productsList1.length)),
          SizedBox(height: 16.h),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const SpecialOffers()),

          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: FlatAndHeelBanner(ontap: () {}),
          ),
          SizedBox(height: 17.h),

          //second offer banner
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: OfferBanner(
                  bannerColor: AppColors.klight_pink,
                  icon: Icons.calendar_month_outlined,
                  description: 'Last Date 29/02/22',
                  title: 'Trending Products',
                  ontap: () {})),
          SizedBox(height: 16.h),
          //second product list
          SizedBox(
              height: 245.h,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 12.w),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16.w),
                  itemBuilder: ((context, index) {
                    return ProductCard(item: productsList2[index]);
                  }),
                  itemCount: productsList2.length)),
          SizedBox(height: 16.h),
          //summer sale banner
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SummerSale(ontap: () {}),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: const BrownShoes(),
          ),
          SizedBox(height: 24.h),
        ])));
  }
}
