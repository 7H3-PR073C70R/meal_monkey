import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/custom_textfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              AppSize.verticalSpaceLarge,
              Text(
                AppString.resetPassword,
                style: AppTextStyle.headerOneTextStyle.copyWith(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              ),
              AppSize.verticalSpaceMedium,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  AppString.resetPasswordInstruction,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              AppSize.verticalSpaceLarge,
              const CustomTextField(
                hintText: 'Email',
              ),
              AppSize.verticalSpaceLarge,
              Button(
                color: AppColors.orange,
                child: const Text(
                  'Send',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
