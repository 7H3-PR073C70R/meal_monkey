import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';
import 'package:meal_monkey/src/features/auth/login_and_signup/presentation/widgets/top_half.dart';

class LoginAndSignupScreen extends StatelessWidget {
  const LoginAndSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopHalf(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AppSpacing.verticalSpaceLarge,
                const Text(
                  'Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.greyColor, fontSize: 16),
                ),
                AppSpacing.verticalSpaceLarge,
                Button(
                  color: AppColors.primary,
                  ontap: () {},
                  child: const Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                AppSpacing.verticalSpaceLarge,
                Button(
                  border: Border.all(color: AppColors.primary),
                  ontap: () {},
                  child: const Text(
                    'Sign up',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.red, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
