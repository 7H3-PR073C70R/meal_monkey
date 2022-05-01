import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class NotificationCard extends StatelessWidget {
  final String notificationTitle;
  final String notificationTime;
  final bool notificationRead;
  const NotificationCard({
    Key? key,
    required this.notificationTitle,
    required this.notificationTime,
    required this.notificationRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: notificationRead
          ? AppColors.kcWhiteColor
          : AppColors.greyLightColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 10, 10),
        child: Row(
          children: [
            SvgPicture.asset(AssetPath.dotIcon),
            AppSpacing.horizontalSpaceLarge,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationTitle,
                  style: AppTextStyle.bodyOneTextStyle,
                ),
                AppSpacing.verticalSpaceSmall,
                Text(
                  notificationTime,
                  style: AppTextStyle.bodyOneTextStyle
                      .copyWith(color: AppColors.greyModerateColor),
                ),
                const Divider(
                  color: AppColors.greyModerateColor,
                  thickness: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
