import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';

import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class SpacedText extends StatelessWidget {
  final String text;
  final String? value;
  final Widget? child;
  final bool? divider;
  const SpacedText({
    Key? key,
    required this.text,
    this.value = '',
    this.child,
    this.divider= true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                text,
                style: AppTextStyle.bodyOneTextStyle,
              ),
              const Spacer(),
              child ??
                  Text(
                    value!,
                    style: AppTextStyle.headerFourTextStyle,
                  ),
            ],
          ),
          AppSpacing.verticalSpaceSmall,
         if(divider!) const Divider(
            color: AppColors.greyModerateColor,
          ),
        ],
      ),
    );
  }
}
