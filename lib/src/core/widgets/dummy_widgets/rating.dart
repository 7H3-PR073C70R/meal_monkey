import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';

class Ratings extends StatelessWidget {
  final int ratings;
  const Ratings({Key? key, required this.ratings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          Icon(
            Icons.star,
            color: ratings >= i ? AppColors.primary : AppColors.greyColor,
          ),
      ],
    );
  }
}
