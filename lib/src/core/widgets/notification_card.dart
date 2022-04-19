import 'package:flutter/material.dart';

import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class NotificationCard extends StatelessWidget {
  final String notificationTitle;
  final String notificationTime;
  const NotificationCard({
    Key? key,
    required this.notificationTitle,
    required this.notificationTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const Icon(Icons.notifications, size: 20, color: AppColors.orange,),
      AppSize.horizontalSpaceLarge,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(notificationTitle, style: AppTextStyle.bodyOneTextStyle),
            AppSize.verticalSpaceSmall,
            Text(notificationTime, style: AppTextStyle.bodyOneTextStyle.copyWith(color: AppColors.greyColor)),
          ],
        ),
      ],
    );
  }
}
