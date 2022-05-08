import 'package:flutter/material.dart';

import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class AppDescriptionAndText extends StatelessWidget {
  final String title;
  final String description;
  const AppDescriptionAndText({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyle.headerTwoTextStyle,),
        AppSpacing.verticalSpaceSmall,
        Text(description, 
        style: AppTextStyle.bodyOneTextStyle.copyWith(color: AppColors.greyColor, fontWeight: FontWeight.w100,),
        )],
    );
  }
}
