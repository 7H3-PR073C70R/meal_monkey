import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class DessertCard extends StatelessWidget {
  final String title;
  final double rating;
  final String imageUrl;
  final String resturantName;
  final VoidCallback onTap;

  const DessertCard({
    Key? key,
    required this.imageUrl,
    required this.rating,
    required this.resturantName,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 193,
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: 65,
          color: Colors.black.withOpacity(0.2),
          padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyle.headerThreeTextStyle
                    .copyWith(color: AppColors.kcWhiteColor),
              ),
              AppSize.verticalSpaceSmall,
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: AppColors.primary,
                    size: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyle.bodyOneTextStyle
                          .copyWith(color: AppColors.primary),
                      text: '$rating ',
                      children: [
                        TextSpan(
                          style: AppTextStyle.bodyOneTextStyle
                              .copyWith(color: AppColors.kcWhiteColor),
                          text: resturantName,
                        ),
                        TextSpan(
                          style: AppTextStyle.bodyOneTextStyle
                              .copyWith(color: AppColors.kcWhiteColor),
                          text: ' ${AppString.desert}',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
