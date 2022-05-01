import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_bar.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';
import 'package:meal_monkey/src/features/my_order/presentation/widgets/order_cards.dart';
import 'package:meal_monkey/src/features/my_order/presentation/widgets/space_text.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> order = {
      'Beef Bugger x1': '\$16',
      'Classic Bugger x1': '\$14',
      'Cheese Chicken Bugger x1': '\$17',
      'Cheese Legs Basket x1': '\$15',
      'French Fries Large x1': '\$6',
    };

    final kh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppCustomAppBar(
              title: AppString.myOrder,
              isBackButton: true,
              // icon: AssetPath.shoppingCartIcon,
            ),
            AppSpacing.verticalSpaceSmall,
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: OrderCard(
                    foodDescription: 'Mushroom Burger',
                    foodImage:
                        'https://assets.bonappetit.com/photos/5b919cb83d923e31d08fed17/1:1/w_2560%2Cc_limit/basically-burger-1.jpg',
                    foodName: 'Burger',
                    foodRating: '4.6',
                    noOfRatings: '123',
                    location: 'No 03, 4th Lane Newyork',
                  ),
                ),
                AppSpacing.verticalSpaceLarge,
                Container(
                  color: AppColors.greyLightColor,
                  height: kh * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: order.length,
                      itemBuilder: (context, index) {
                        return const SpacedText(
                            text: 'Beef Bugger x1', value: '\$6',);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SpacedText(
                        text: 'Delivery Instruction',
                        child: Row(
                          children: [
                            SvgPicture.asset(AssetPath.plusIcon),
                            AppSpacing.horizontalSpaceTiny,
                            Text(
                              'Add Notes',
                              style: AppTextStyle.bodyOneTextStyle
                                  .copyWith(color: AppColors.orange),
                            )
                          ],
                        ),
                      ),
                      SpacedText(
                        divider: false,
                        text: 'Sub Total',
                        child: Text(
                          '\$68',
                          style: AppTextStyle.bodyOneTextStyle
                              .copyWith(color: AppColors.orange),
                        ),
                      ),
                      SpacedText(
                        text: 'Delivery Cost',
                        child: Text(
                          '\$2',
                          style: AppTextStyle.bodyOneTextStyle
                              .copyWith(color: AppColors.orange),
                        ),
                      ),
                      SpacedText(
                        divider: false,
                        text: 'Total',
                        child: Text(
                          '\$72',
                          style: AppTextStyle.headerTwoTextStyle.copyWith(
                            color: AppColors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Button(text: AppString.sendOrder,
              color: AppColors.orange,
              textColor: AppColors.kcWhiteColor,
               ontap: (){},),
            )
          ],
        ),
      ),
    );
  }
}
