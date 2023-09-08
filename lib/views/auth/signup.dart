import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_project/data/app_assets.dart';
import 'package:stylish_project/data/app_colors.dart';
import 'package:stylish_project/data/typography.dart';
import 'package:stylish_project/views/auth/components/auth_field.dart';
import 'package:stylish_project/views/auth/signin.dart';
import 'package:stylish_project/widgets/button.dart';
import 'package:stylish_project/widgets/circle.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
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

  String? _validateconfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    return null; // Input is valid
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 29.w, right: 29.w, top: 19.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create An\n Account',
                style: AppTypography.kBold36.copyWith(color: AppColors.kblack),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 33.h,
              ),
              AuthField(
                controller: _emailController,
                hintText: 'Username or Email',
                icon: AppAssets.kuser,
                validator: _validateEmail,
              ),
              SizedBox(
                height: 31.h,
              ),
              AuthField(
                controller: _passwordController,
                hintText: 'Pasword',
                icon: AppAssets.klock,
                isPassword: true,
                validator: _validatePassword,
              ),
              SizedBox(
                height: 31.h,
              ),
              AuthField(
                controller: _confirmPasswordController,
                hintText: 'Confirm Pasword',
                icon: AppAssets.klock,
                isPassword: true,
                validator: _validateconfirmPassword,
              ),
              SizedBox(
                height: 19.h,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'By clicking the ',
                      style: AppTypography.kLight12
                          .copyWith(color: AppColors.kgreyregister)),
                  TextSpan(
                      text: 'Register',
                      style: AppTypography.kLight12
                          .copyWith(color: AppColors.korange)),
                  TextSpan(
                      text: 'button, you agree\nto the public offer ',
                      style: AppTypography.kLight12
                          .copyWith(color: AppColors.kgreyregister)),
                ]),
              ),
              SizedBox(
                height: 38.h,
              ),
              Button(text: 'Create Account', ontap: () {}),
              SizedBox(
                height: 40.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '- OR Continue with -',
                  style: AppTypography.kLight12
                      .copyWith(color: AppColors.kdarkgrey),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KCircle(image: Image.asset(AppAssets.kgooglelogo)),
                  SizedBox(
                    width: 10.w,
                  ),
                  KCircle(image: Image.asset(AppAssets.kapplelogo)),
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
                  Text('I Already Have an Account',
                      style: AppTypography.kExtraLight14
                          .copyWith(color: AppColors.kdarkgrey)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignIn()));
                      },
                      child: Text(
                        'Login',
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
      ),
    );
  }
}
