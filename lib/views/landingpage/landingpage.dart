import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';

import '../homepage/homepage.dart';
import '../shop/shop_page.dart';
import '../trending/trendingpage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectIndex = 0;
  bool _selected = false;
  List<Widget> pages = [
    const HomePage(),
    const TrendingPage(),
    Container(),
    const ShopPage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: _selected ? AppColors.kWhite : AppColors.kprimary,
        hoverColor: AppColors.kWhite,
        child: SvgPicture.asset(AppAssets.kshoppingcart,
            color: _selected ? AppColors.kblack : AppColors.kWhite),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ShopPage()),
          ).then((_) {
            setState(() {
              _selected = false;
            });
          });
        },
      ),
      extendBody: true,
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        elevation: 0,
        backgroundColor: AppColors.kWhite,
        selectedItemColor: AppColors.kprimary,
        unselectedItemColor: AppColors.kblack,
        onTap: (int val) {
          selectIndex = val;
          setState(() {});
        },
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.khome),
            activeIcon: SvgPicture.asset(
              AppAssets.khome,
              color: AppColors.kprimary,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.kheart),
            activeIcon: SvgPicture.asset(
              AppAssets.kheart,
              color: AppColors.kprimary,
            ),
            label: 'Wishlist',
          ),
          const BottomNavigationBarItem(
            icon: SizedBox(width: 0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.ksearchbottombar),
            activeIcon: SvgPicture.asset(
              AppAssets.ksearchbottombar,
              color: AppColors.kprimary,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.ksetting),
            activeIcon: SvgPicture.asset(
              AppAssets.ksetting,
              color: AppColors.kprimary,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
