import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';

class HomeNavigationBotton extends StatelessWidget {
  final bool isHome;
  final VoidCallback onTap;
  const HomeNavigationBotton({
    Key? key,
    required this.isHome,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: AppColors.kcWhiteColor,
              blurRadius: 2,
              spreadRadius: 5,
            ),
          ],
          color: isHome ? AppColors.primary : AppColors.greyColor,
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          AssetPath.homeIcon,
          height: 20,
          width: 20,
          fit: BoxFit.cover,
          color: AppColors.kcWhiteColor,
        ),
      ),
    );
  }
}
