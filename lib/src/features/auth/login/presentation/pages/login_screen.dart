import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  'Login',
                  style: AppTextStyle.headerOneTextStyle.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  'Add your details to login',
                  style: AppTextStyle.headerThreeTextStyle.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Your Email',
                ),
                AppSpacing.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Password',
                ),
                AppSpacing.verticalSpaceMedium,
                Button(
                  color: AppColors.primary,
                  child: const Text(
                    AppString.login,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  ontap: () {},
                ),
                AppSpacing.verticalSpaceMedium,
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot your password?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                const Text('or Login With'),
                AppSpacing.verticalSpaceSmall,
                Button(
                  color: AppColors.blueColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.facebook_sharp,
                        color: Colors.white,
                      ),
                      AppSpacing.horizontalSpaceSmall,
                      Text(
                        AppString.loginWithFacebook,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  ontap: () {},
                ),
                AppSpacing.verticalSpaceMedium,
                Button(
                  color: AppColors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      AppSpacing.horizontalSpaceSmall,
                      Text(
                        AppString.loginWithGoogle,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  ontap: () {},
                ),
                AppSpacing.verticalSpaceLarge,
                AppSpacing.verticalSpaceLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an Account ?"),
                    AppSpacing.horizontalSpaceTiny,
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        AppString.signUp,
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
