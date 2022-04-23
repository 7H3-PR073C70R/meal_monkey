import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/custom_textfield.dart';

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
                AppSize.verticalSpaceLarge,
                Text(
                  'Sign Up',
                  style: AppTextStyle.headerOneTextStyle.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
                AppSize.verticalSpaceMedium,
                Text(
                  'Add your details to sign up',
                  style: AppTextStyle.headerThreeTextStyle.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                AppSize.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Name',
                ),
                AppSize.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Email',
                ),
                AppSize.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Mobile No',
                ),
                AppSize.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Address',
                ),
                AppSize.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Password',
                ),
                AppSize.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Confirm Password',
                ),
                AppSize.verticalSpaceLarge,
                Button(
                  color: AppColors.primary,
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  ontap: () {},
                ),
                AppSize.verticalSpaceLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an Account?'),
                    AppSize.horizontalSpaceTiny,
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
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
