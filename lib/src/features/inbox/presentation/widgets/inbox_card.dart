import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';

import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class InboxCard extends StatelessWidget {
  final String inboxTitle;
  final String inboxTime;
  final String inboxDesc;
  final bool inboxRead;
  const InboxCard({
    Key? key,
    required this.inboxTitle,
    required this.inboxDesc,
    required this.inboxTime,
    required this.inboxRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: inboxRead ? AppColors.kcWhiteColor : AppColors.greyLightColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
            
              child: SvgPicture.asset(AssetPath.dotIcon),
            ),
           
            Flexible(
            
             flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        inboxTitle,
                        style: AppTextStyle.bodyOneTextStyle,
                      ),
                      AppSpacing.horizontalSpaceMedium,
                      Text(
                        inboxTime,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.bodyTwoTextStyle
                            .copyWith(color: AppColors.greyColor),
                      ),
                    ],
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        inboxDesc,
                        style: AppTextStyle.bodyOneTextStyle
                            .copyWith(color: AppColors.greyColor),
                      ),
                      const Icon(
                        Icons.star,
                        size: 20,
                        color: AppColors.orange,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
