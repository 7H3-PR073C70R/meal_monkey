import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class FoodOrderAndDescription extends StatelessWidget {
  final String imageURl;
  final String foodName;
  final String resturantName;
  final String address;
  final String type;
  final double ratings;
  final int raters;

  const FoodOrderAndDescription({
    Key? key,
    required this.imageURl,
    required this.foodName,
    required this.resturantName,
    required this.address,
    required this.raters,
    required this.ratings,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 97,
      child: Row(
        children: [
          Container(
            width: 95,
            height: 97,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(imageURl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AppSize.horizontalSpaceSmall,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(foodName, style: AppTextStyle.headerThreeTextStyle),
              AppSize.verticalSpaceSmall,
              Row(
                children: [
                  const Icon(Icons.star, color: AppColors.primary),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyle.bodyOneTextStyle
                          .copyWith(color: AppColors.primary),
                      text: '$ratings ',
                      children: [
                        TextSpan(
                          text: '($raters ${AppString.ratings})',
                          style: AppTextStyle.bodyOneTextStyle
                              .copyWith(color: AppColors.greyColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              AppSize.verticalSpaceSmall,
              RichText(
                text: TextSpan(
                  style: AppTextStyle.bodyOneTextStyle
                      .copyWith(color: AppColors.greyColor),
                  text: '  $type   ',
                  children: [
                    TextSpan(
                      text: '.',
                      style: AppTextStyle.bodyOneTextStyle
                          .copyWith(color: AppColors.primary),
                    ),
                    TextSpan(
                      text: resturantName,
                      style: AppTextStyle.bodyOneTextStyle
                          .copyWith(color: AppColors.greyColor),
                    ),
                  ],
                ),
              ),
              AppSize.verticalSpaceSmall,
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: AppColors.primary,
                    size: 20,
                  ),
                  Text(
                    address,
                    style: AppTextStyle.bodyOneTextStyle.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
