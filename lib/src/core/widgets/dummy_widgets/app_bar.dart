import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:meal_monkey/src/core/constants/asset_path.dart';

import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class AppCustomAppBar extends StatelessWidget {
  final String title;
  final bool isBackButton;
  final String icon;
  const AppCustomAppBar({
    Key? key,
    required this.title,
    required this.isBackButton,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 30, 20),
      child: Row(
        children: [
          Row(
            children: [
              if (isBackButton)
                InkWell(
                   onTap: () {
                    context.pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SvgPicture.asset(
                      AssetPath.backIcon,
                     
                    ),
                  ),
                ),
              Text(title, style: AppTextStyle.headerOneTextStyle),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(icon),
        ],
      ),
    );
  }
}
