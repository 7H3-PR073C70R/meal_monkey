import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class SmallFoodCard extends StatelessWidget {
  final String url;
  final void Function()? ontap;
  final String name;
  const SmallFoodCard({
    Key? key,
    required this.url,
    this.ontap,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: AppTextStyle.headerOneTextStyle,
          )
        ],
      ),
    );
  }
}
