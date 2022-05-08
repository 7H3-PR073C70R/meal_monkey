import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class AppTextAndIcon extends StatelessWidget {

  final String text;
  final String? iconPath;


  const AppTextAndIcon({
    Key? key,
    required this.text,
    this.iconPath = AssetPath.dotIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
       Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 10, 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(iconPath!),
            AppSpacing.horizontalSpaceLarge,
           Expanded(
             child: Text(
                text,
               softWrap: true, 
                style: AppTextStyle.bodyOneTextStyle,
              ),
           ),
          ],
        ),
      
    );
  }
}
