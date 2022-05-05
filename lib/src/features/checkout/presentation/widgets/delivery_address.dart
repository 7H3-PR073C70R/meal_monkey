import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery Address',
          style: AppTextStyle.bodyOneTextStyle
              .copyWith(color: AppColors.greyModerateColor),
        ),
        AppSpacing.verticalSpaceMedium,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '65, Jalan Sri Putra 1,',
                  style: AppTextStyle.headerTwoTextStyle,
                ),
                Text(
                  'Taman Sri Putra,',
                  style: AppTextStyle.headerTwoTextStyle,
                ),
              ],
            ),
            Text(
              'Change',
              style: AppTextStyle.headerFourTextStyle
                  .copyWith(color: AppColors.orange),
            ),
          ],
        ),
      ],
    );
  }
}
