import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class BuildNavBarIcon extends StatelessWidget {
  final bool isSelected;
  final String title;
  final VoidCallback onTap;
  final String iconPath;
  const BuildNavBarIcon({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.onTap,
    required this.iconPath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            height: 15,
            width: 17,
            color: isSelected ? AppColors.primary : AppColors.greyColor,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: AppTextStyle.headerFourTextStyle.copyWith(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
              color: isSelected ? AppColors.primary : AppColors.greyColor,
            ),
          )
        ],
      ),
    );
  }
}
