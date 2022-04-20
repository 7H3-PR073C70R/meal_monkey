import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class MoreOptionCard extends StatelessWidget {
  final IconData iconData;
  final void Function()? ontap;
  final String text;
  const MoreOptionCard({
    Key? key,
    required this.iconData,
    this.ontap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 221, 221),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: AppColors.greyColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.payment,
                  ),
                ),
                AppSize.horizontalSpaceLarge,
                Text(
                  text,
                  style: AppTextStyle.headerTwoTextStyle,
                )
              ],
            ),
          ),
          Positioned(
            right: 3,
            top: 25,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 226, 221, 221),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
