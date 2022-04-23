import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
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
                AppSize.verticalSpaceLarge,
                Text(
                  'Login',
                  style: AppTextStyle.headerOneTextStyle.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
                AppSize.verticalSpaceMedium,
                Text(
                  'Add your details to login',
                  style: AppTextStyle.headerThreeTextStyle.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                AppSize.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Your Email',
                ),
                AppSize.verticalSpaceMedium,
                const CustomTextField(
                  hintText: 'Password',
                ),
                AppSize.verticalSpaceMedium,
                Button(
                  color: AppColors.primary,
                  child: const Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  ontap: () {},
                ),
                AppSize.verticalSpaceMedium,
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot your password?',
                    style: TextStyle(color: AppColors.greyColor),
                  ),
                ),
                AppSize.verticalSpaceMedium,
                const Text('or Login With'),
                AppSize.verticalSpaceSmall,
                Button(
                  color: AppColors.blueColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.facebook_sharp,
                        color: Colors.white,
                      ),
                      AppSize.horizontalSpaceSmall,
                      Text(
                        'Login with Facebook',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  ontap: () {},
                ),
                AppSize.verticalSpaceMedium,
                Button(
                  color: AppColors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        /// would update the icon to google icon
                        Icons.mail,
                        color: Colors.white,
                      ),
                      AppSize.horizontalSpaceSmall,
                      Text(
                        'Login with Google',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  ontap: () {},
                ),
                AppSize.verticalSpaceLarge,
                AppSize.verticalSpaceLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an Account ?"),
                    AppSize.horizontalSpaceTiny,
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'SIgn Up',
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
