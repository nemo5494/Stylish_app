import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/app_assets.dart';
import '../../data/app_colors.dart';
import '../../data/typography.dart';
import '../../widgets/button.dart';

import 'components/customtextformfiel.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
              )),
          centerTitle: true,
          title: Text(
            'Checkout',
            style: AppTypography.kSemiBold18.copyWith(color: AppColors.kblack),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 31.h),
                  Center(
                    child: Stack(children: [
                      Container(
                        width: 96.w,
                        height: 96.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.kbllue,
                        ),
                        child: Image.asset(
                          AppAssets.kdpbig,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                            width: 32.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.kbllue,
                                border: Border.all(
                                    color: AppColors.kWhite, width: 3.w)),
                            child: Icon(Icons.edit_outlined,
                                color: AppColors.kWhite, size: 14.5)),
                      ),
                    ]),
                  ),
                  SizedBox(height: 30.h),
                  Text('Personal Details', style: AppTypography.kSemiBold18),
                  CustomTextFormField(
                      label: 'Email Address', controller: _emailController),
                  SizedBox(height: 28.h),
                  CustomTextFormField(
                      isPassword: true,
                      controller: _passwordController,
                      label: 'Password'),
                  Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Change Password',
                            style: AppTypography.kLight12.copyWith(
                                color: AppColors.kprimary,
                                decoration: TextDecoration.underline),
                          ))),
                  //line:
                  SizedBox(height: 24.h),
                  Divider(thickness: 1, color: AppColors.kgreydivider),
                  Text('Business Address Details',
                      style: AppTypography.kSemiBold16
                          .copyWith(color: AppColors.kblack)),
                  SizedBox(height: 28.h),
                  const CustomTextFormField(label: 'Address'),
                  SizedBox(height: 28.h),
                  const CustomTextFormField(
                    label: 'State',
                  ),
                  SizedBox(height: 28.h),
                  const CustomTextFormField(
                    label: 'Country',
                  ),
                  SizedBox(height: 34.h),
                  Divider(
                    thickness: 1,
                    color: AppColors.kgreydivider,
                  ),
                  SizedBox(height: 32.h),
                  Text(
                    'Bank Account Details',
                    style: AppTypography.kSemiBold16
                        .copyWith(color: AppColors.kblack),
                  ),
                  SizedBox(height: 24.h),
                  const CustomTextFormField(
                    label: 'Bank Account Number',
                  ),
                  SizedBox(height: 28.h),
                  const CustomTextFormField(
                    label: 'Account Holder\’s Name',
                  ),
                  SizedBox(height: 28.h),
                  const CustomTextFormField(
                    label: 'IFSC Code',
                  ),
                  SizedBox(height: 34.h),
                  Button(ontap: () {}, text: 'Save'),
                  SizedBox(height: 57.h),
                ]),
          ),
        ));
  }
}
