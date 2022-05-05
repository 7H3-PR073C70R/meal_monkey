import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_bar.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';
import 'package:meal_monkey/src/features/checkout/presentation/widgets/delivery_address.dart';
import 'package:meal_monkey/src/features/checkout/presentation/widgets/payment_method.dart';
import 'package:meal_monkey/src/features/my_order/presentation/widgets/space_text.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
           const AppCustomAppBar(
            title: AppString.checkOut,
            isBackButton: true,
          ),

         const Padding(
            padding: EdgeInsets.all(20.0),
            child: DeliveryAddress(),
          ),
          _spaceContainer(),
          PaymentMethod(),
           _spaceContainer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                    SpacedText(
                divider: false,
                text: 'Sub Total',
                child: Text(
                  '\$68',
                  style: AppTextStyle.bodyOneTextStyle,
                     
                ),
              ),
              SpacedText(
                divider: false,
                text: 'Delivery Cost',
                child: Text(
                  '\$2',
                  style: AppTextStyle.bodyOneTextStyle,
                      
                ),
              ),
              SpacedText(
                text: 'Discount',
                child: Text(
                  '- \$2',
                  style: AppTextStyle.bodyOneTextStyle,
                      
                ),
              ),
              SpacedText(
                divider: false,
                text: 'Total',
                child: Text(
                  '\$72',
                  style: AppTextStyle.headerTwoTextStyle,
                ),
              ),
              ],
            ),
          ),

               Padding(
              padding: const EdgeInsets.all(20.0),
              child: Button(
                text: AppString.sendOrder,
                color: AppColors.orange,
                textColor: AppColors.kcWhiteColor,
                ontap: () {
                  // context.pushNamed('checkout');
                },
              ),
            )
        ],
      ),),
    );
  }

  Widget _spaceContainer() {
    return Container(
      height: 15,
      color: AppColors.greyLightColor,
    );
  }
}
