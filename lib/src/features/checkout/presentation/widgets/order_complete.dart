import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';

class OrderSuccessful extends StatelessWidget {
  const OrderSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(AssetPath.orderComplete),
            Text(
              AppString.thankYou,
              style: AppTextStyle.headerOneTextStyle,
            ),
            AppSpacing.verticalSpaceTiny,
            Text(
              AppString.forOrder,
              style: AppTextStyle.headerFourTextStyle,
            ),
            AppSpacing.verticalSpaceLarge,
            Text(
              AppString.orderDesc,
              style: AppTextStyle.bodyOneTextStyle,
            ),
            AppSpacing.verticalSpaceLarge,
            Button(
                color: AppColors.orange,
                ontap: () {},
                child: Text(AppString.trackOrder,
                 textAlign: TextAlign.center,
                 style: AppTextStyle.headerThreeTextStyle.copyWith(color: AppColors.kcWhiteColor),),),
            AppSpacing.verticalSpaceMedium,
            GestureDetector(
                onTap: () {
                  context.go('/');
                },
                child: Text(
                  AppString.backToHome,
                  style: AppTextStyle.bodyOneTextStyle,
                ),)
          ],
        ),
      ),
    );
  }
}
