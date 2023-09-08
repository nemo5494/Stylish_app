import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_svg/svg.dart';

import '../../data/app_assets.dart';
import '../../data/app_colors.dart';
import '../../data/typography.dart';
import '../../models/Staggeredmodel.dart';
import '../homepage/components/sort_container.dart';
import '../homepage/components/textfield.dart';
import '../profile/profile._page.dart';
import 'components/Staggeredcard.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({super.key});

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
              width: 111.w, height: 31.h, child: Image.asset(AppAssets.klogo)),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                child: Image.asset(AppAssets.kdp)),
            SizedBox(width: 12.w)
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 26.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const KSearchField()),
            SizedBox(height: 17.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                children: [
                  Text('52,082+ Iteams',
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
            StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: staggeredproducts.length,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return StaggeredCard(item: staggeredproducts[index]);
              },
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
            ),
          ],
        ),
      ),
    );
  }
}
