import 'package:flutter/material.dart';

import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class InboxCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  const InboxCard({
    Key? key,
    required this.title,
    required this.description,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const Icon(
          Icons.notifications,
          size: 20,
          color: AppColors.orange,
        ),
        AppSize.horizontalSpaceLarge,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: AppTextStyle.bodyOneTextStyle,),
            AppSize.verticalSpaceSmall,
            Text(description,
                style: AppTextStyle.bodyOneTextStyle
                    .copyWith(color: AppColors.greyColor),),
          ],
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(date,
                style: AppTextStyle.bodyTwoTextStyle
                    .copyWith(color: AppColors.greyColor),),
          const  Icon(
              Icons.star,
              size: 20,
              color: AppColors.orange,
            ),
          ],
        )
      ],
    );
  }
}
