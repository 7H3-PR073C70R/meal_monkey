import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_input_text_field.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';
import 'package:meal_monkey/src/features/my_order/presentation/widgets/space_text.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SpacedText(
            text: AppString.paymentMethod,
            divider: false,
            child: Row(
              children: [
                SvgPicture.asset(AssetPath.plusIcon),
                AppSpacing.horizontalSpaceTiny,
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.85,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Add Credit/Debit Card',
                                  style: AppTextStyle.bodyOneTextStyle,
                                ),
                                AppSpacing.verticalSpaceSmall,
                                const Divider(
                                  color: AppColors.greyModerateColor,
                                ),
                                AppSpacing.verticalSpaceSmall,
                                const AppInputField(
                                  placeHolder: 'Card Number',
                                ),
                                AppSpacing.verticalSpaceLarge,
                                Row(
                                  children: [
                                    Text(
                                      'Expire',
                                      style: AppTextStyle.headerThreeTextStyle,
                                    ),
                                    const Spacer(),
                                    const SizedBox(
                                      width: 100,
                                      child: AppInputField(
                                        placeHolder: 'MM',
                                      ),
                                    ),
                                    AppSpacing.horizontalSpaceLarge,
                                    const SizedBox(
                                      width: 100,
                                      child: AppInputField(
                                        placeHolder: 'YY',
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpacing.verticalSpaceLarge,
                                const AppInputField(
                                  placeHolder: 'Security Code',
                                ),
                                AppSpacing.verticalSpaceLarge,
                                const AppInputField(
                                  placeHolder: 'First Name',
                                ),
                                AppSpacing.verticalSpaceLarge,
                                const AppInputField(
                                  placeHolder: 'Last Name',
                                ),
                                SwitchListTile(
                                  value: false,
                                  onChanged: (_) {},
                                  title: Text(
                                    'You can remove this card',
                                    style: AppTextStyle.bodyOneTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 20),
                                  child: Button(
                                    color: AppColors.orange,
                                    textColor: AppColors.kcWhiteColor,
                                    ontap: () {
                                      // context.pushNamed('checkout');
                                    },
                                    child: Text(
                                      AppString.trackOrder,
                                      textAlign: TextAlign.center,
                                      style: AppTextStyle.headerThreeTextStyle
                                          .copyWith(
                                              color: AppColors.kcWhiteColor,),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    AppString.addCard,
                    style: AppTextStyle.bodyOneTextStyle
                        .copyWith(color: AppColors.orange),
                  ),
                )
              ],
            ),
          ),
        ),
        _methodsCard(
          value: AppString.cashOnDelivery,
        ),
        _methodsCard(
          value: '**** **** **** **** 1234',
          icon: AssetPath.visaIcon,
        ),
        _methodsCard(
          value: 'badiru@mealmonkey.com',
          icon: AssetPath.payPalIcon,
        ),
      ],
    );
  }

  Widget _methodsCard({String? icon, required String value}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 10),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.greyLightColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Row(
                children: [
                  if (icon != null) Image.asset(icon),
                  AppSpacing.horizontalSpaceSmall,
                  Text(
                    value,
                    style: AppTextStyle.bodyOneTextStyle,
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(AssetPath.ellipseIcon)
            ],
          ),
        ),
      ),
    );
  }
}
