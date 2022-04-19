import 'package:flutter/material.dart';

import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class AppMenuOption extends StatelessWidget {
  final String title;
  final String description;
  final Widget image;
  const AppMenuOption({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kw = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        const SizedBox(
          height: 100,
          width: double.infinity,
        ),
        Container(
          height: 80,
          width: kw * 0.8,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyle.headerOneTextStyle),
                AppSize.horizontalSpaceSmall,
                Text(description,
                    style: AppTextStyle.bodyTwoTextStyle.copyWith(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w100,),),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          child: image,
        ),
        Positioned(
            right: 10,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: const Icon(Icons.arrow_forward_ios),
            ),)
      ],
    );
  }
}
