import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class RowText extends StatelessWidget {
  final String text;
  const RowText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppTextStyle.headerFourTextStyle.copyWith(
              color: AppColors.lightGreyColor,
            ),
          ),
          Text(
            AppString.viewAll,
            style: AppTextStyle.headerFourTextStyle.copyWith(
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
