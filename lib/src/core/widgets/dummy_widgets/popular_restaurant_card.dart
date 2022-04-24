import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class PopularRestaurantCard extends StatelessWidget {
  final double? rating;
  final int? numberOfRatings;
  final String imageUrl;
  final void Function()? ontap;

  const PopularRestaurantCard({
    Key? key,
    this.rating,
    this.numberOfRatings,
    required this.imageUrl,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.23,
          ),
          AppSpacing.verticalSpaceSmall,
          Text(
            'Minute by tuk tuk',
            style: AppTextStyle.headerTwoTextStyle,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: AppColors.orange,
              ),
              const SizedBox(width: 2),
              Text('$rating', style: const TextStyle(color: AppColors.orange)),
              const SizedBox(width: 5),
              Text(
                '($numberOfRatings ratings)  Cafe',
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 5),
              Container(
                height: 5,
                width: 5,
                decoration: const BoxDecoration(
                  color: AppColors.orange,
                  shape: BoxShape.circle,
                ),
              ),
              AppSpacing.horizontalSpaceSmall,
              const Text(
                'Western Food',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
