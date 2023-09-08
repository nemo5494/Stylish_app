import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/typography.dart';

class UKsize extends StatefulWidget {
  const UKsize({Key? key}) : super(key: key);

  @override
  State<UKsize> createState() => _UKsizeState();
}

class _UKsizeState extends State<UKsize> {
  int selectedindex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        //generates a list of widgets
        final ukSize = index + 6; // Generate UK sizes 6, 7, 8, 9, 10
        return Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedindex = index;
                });
              },
              child: Container(
                height: 30.h,
                width: 50.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                      width: 1,
                      color: selectedindex != index
                          ? AppColors.kpinksize
                          : Colors.transparent),
                  color: selectedindex == index
                      ? AppColors.kpinksize
                      : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    '$ukSize UK',
                    style: AppTypography.kSemiBold14.copyWith(
                      color: selectedindex != index
                          ? AppColors.kpinksize
                          : AppColors.kWhite,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8.w), // Add spacing between containers
          ],
        );
      }),
    );
  }
}
