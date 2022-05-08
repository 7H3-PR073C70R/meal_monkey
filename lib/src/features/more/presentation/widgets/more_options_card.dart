import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class MoreOptionCard extends StatelessWidget {
  final String icon;
  final void Function()? onTap;
  final String text;
  final bool? isNotification;
  final String? notificationValue;
  const MoreOptionCard({
    Key? key,
    required this.icon,
    this.onTap,
    required this.text,
    this.isNotification =false,
    this.notificationValue = '0',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.greyLightColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: AppColors.greyModerateColor,
                      shape: BoxShape.circle,
                    ),
                    child:  SvgPicture.asset(icon, width: 15,),
                  ),
                  AppSpacing.horizontalSpaceLarge,
                  Text(
                    text,
                    style: AppTextStyle.headerFourTextStyle,
                  )
                ],
              ),
            ),
            Positioned(
              right: 3,
              top: 20,
              child: Row(
                children: [
               if(isNotification!) Container(
                    decoration: const BoxDecoration(
                      color: AppColors.red,
                      shape: BoxShape.circle,
                    ),
                   child: Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Text(notificationValue!, style: AppTextStyle.bodyOneTextStyle.copyWith(color: AppColors.kcWhiteColor),),
                   ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      color: AppColors.greyLightColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
