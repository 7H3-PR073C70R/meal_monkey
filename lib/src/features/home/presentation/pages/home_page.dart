import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/custom_textfield.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/popular_restaurant_card.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/recent_item_card.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/small_food_card.dart';
import 'package:meal_monkey/src/features/home/presentation/widgets/row_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Good Morning Protector!',
          style: AppTextStyle.headerTwoTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: AppColors.greyColor,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppSpacing.verticalSpaceSmall,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.deliverTo,
                      style: AppTextStyle.headerFourTextStyle.copyWith(
                        color: AppColors.lightGreyColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          AppString.currentLocation,
                          style: AppTextStyle.headerFourTextStyle,
                        ),
                        AppSpacing.horizontalSpaceSmall,
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.primary,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpaceMedium,
                    const SizedBox(
                      height: 50,
                      child: CustomTextField(
                        hintText: AppString.searchFood,
                        prefixIcon: Icons.search,
                      ),
                    ),
                    AppSpacing.verticalSpaceMedium,
                    SizedBox(
                      height: 150,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => const SmallFoodCard(
                          url:
                              'https://assets.bonappetit.com/photos/5b919cb83d923e31d08fed17/1:1/w_2560%2Cc_limit/basically-burger-1.jpg',
                          name: 'Burger',
                        ),
                        separatorBuilder: (_, __) =>
                            AppSpacing.horizontalSpaceSmall,
                        itemCount: 5,
                      ),
                    ),
                    AppSpacing.verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppString.popularResturants,
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
                  ],
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              SizedBox(
                height: 220 * 3,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const PopularRestaurantCard(
                    imageUrl:
                        'https://assets.bonappetit.com/photos/5b919cb83d923e31d08fed17/1:1/w_2560%2Cc_limit/basically-burger-1.jpg',
                    rating: 4.9,
                  ),
                  separatorBuilder: (_, __) => AppSpacing.verticalSpaceSmall,
                  itemCount: 3,
                ),
              ),
              const RowText(text: AppString.mostPopular,),
              AppSpacing.verticalSpaceMedium,
              SizedBox(
                height: 215,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const PopularRestaurantCard(
                    imageUrl:
                        'https://assets.bonappetit.com/photos/5b919cb83d923e31d08fed17/1:1/w_2560%2Cc_limit/basically-burger-1.jpg',
                    rating: 4.9,
                  ),
                  separatorBuilder: (_, __) => AppSpacing.horizontalSpaceSmall,
                  itemCount: 3,
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              const RowText(text: AppString.recentItems,),
              AppSpacing.verticalSpaceMedium,
              SizedBox(
                height: 215,
                child: ListView.separated(
                  itemBuilder: (context, index) => const RecentItemCard(
                    foodDescription: 'Mushroom Burger',
                    foodImage:
                        'https://assets.bonappetit.com/photos/5b919cb83d923e31d08fed17/1:1/w_2560%2Cc_limit/basically-burger-1.jpg',
                    foodName: 'Burger',
                    foodRating: '4.6',
                    noOfRatings: '123',
                  ),
                  separatorBuilder: (_, __) => AppSpacing.verticalSpaceSmall,
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
