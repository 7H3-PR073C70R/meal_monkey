import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/custom_textfield.dart';
import 'package:meal_monkey/src/features/auth/login/presentation/pages/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppSpacing.verticalSpaceLarge,
                Text(
                  AppString.signUp,
                  style: AppTextStyle.headerOneTextStyle.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  'Add your details to sign up',
                  style: AppTextStyle.headerThreeTextStyle.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Name',
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Email',
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Mobile No',
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Address',
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Password',
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomTextField(
                  hintText: AppString.cornfirmPassword,
                ),
                AppSpacing.verticalSpaceLarge,
                Button(
                  color: AppColors.primary,
                  child: const Text(
                    AppString.signUp,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  ontap: () {},
                ),
                AppSpacing.verticalSpaceLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an Account?'),
                    AppSpacing.horizontalSpaceTiny,
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (constext) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        AppString.login,
                        style: TextStyle(color: AppColors.orange),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
