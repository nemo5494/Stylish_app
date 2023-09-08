import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';
import 'package:stylish_project/views/auth/forgot.dart';
import 'package:stylish_project/views/auth/signup.dart';
import 'package:stylish_project/views/welcome/welcome_view.dart';
import 'package:stylish_project/widgets/button.dart';
import 'package:stylish_project/widgets/circle.dart';

import 'components/auth_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // Validation function for email input
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    return null; // Input is valid
  }

  // Validation function for password input
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    return null; // Input is valid
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 63.h),
            Text(
              'Welcome \nBack!',
              style: AppTypography.kBold36.copyWith(color: AppColors.kblack),
            ),
            SizedBox(height: 36.h),
            AuthField(
              controller: _emailController,
              hintText: 'Username or Email',
              icon: AppAssets.kuser,
              validator: _validateEmail,
            ),
            SizedBox(height: 31.h),
            AuthField(
              controller: _passwordController,
              hintText: 'Pasword',
              icon: AppAssets.klock,
              isPassword: true,
              validator: _validatePassword,
            ),
            SizedBox(height: 9.h),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()));
                  },
                  child: Text(
                    'Forgot Password?',
                    style: AppTypography.kLight12
                        .copyWith(color: AppColors.kprimary),
                    textAlign: TextAlign.right,
                  ),
                )),
            SizedBox(
              height: 52.h,
            ),
            Button(
                text: 'Login',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Welcome()));
                }),
            SizedBox(
              height: 70.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                '- OR Continue with -',
                style:
                    AppTypography.kLight12.copyWith(color: AppColors.kdarkgrey),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KCircle(image: Image.asset(AppAssets.kgooglelogo)),
                SizedBox(
                  width: 10.w,
                ),
                KCircle(image: Image.asset(AppAssets.kfacebooklogo)),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Create An Acoount',
                    style: AppTypography.kExtraLight14
                        .copyWith(color: AppColors.kdarkgrey)),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: Text(
                      'Sign up',
                      style: AppTypography.kSemiBold14.copyWith(
                        color: AppColors.kprimary,
                        decoration: TextDecoration.underline,
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
