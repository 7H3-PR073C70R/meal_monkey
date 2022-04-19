import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/plaform_builder.dart';

class TextAndSwitchButton extends StatelessWidget {
  final String text;
  final bool value;
  final Function(bool?) onChanged;
  const TextAndSwitchButton({
    Key? key,
    required this.value,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppTextStyle.headerFourTextStyle,
        ),
        const Spacer(),
        PlatformBuilder(
          android: Switch(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.primary,
          ),
          ios: CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
