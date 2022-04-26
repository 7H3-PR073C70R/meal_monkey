import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/home_nav_botton.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/nav_bar_item.dart';
import 'package:meal_monkey/src/core/widgets/smart_widgets/main_widget.dart';

class BottomNavBar extends StatelessWidget {
  final int index;
  const BottomNavBar({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kcWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CurvedNavigationBar(
            index: 2,
            height: 60,
            letIndexChange: (i) => i == 2,
            backgroundColor: Colors.black.withOpacity(0.2),
            items: [
              BuildNavBarIcon(
                isSelected: index == 0,
                title: 'Menu',
                iconPath: AssetPath.menuIcon,
                onTap: () => go(context, 0),
              ),
              BuildNavBarIcon(
                isSelected: index == 1,
                title: 'Offers',
                iconPath: AssetPath.offersIcon,
                onTap: () => go(context, 1),
              ),
              const SizedBox(),
              BuildNavBarIcon(
                isSelected: index == 3,
                title: 'Profile',
                iconPath: AssetPath.profileIcon,
                onTap: () => go(context, 3),
              ),
              BuildNavBarIcon(
                isSelected: index == 4,
                title: 'More',
                iconPath: AssetPath.moreIcon,
                onTap: () => go(context, 4),
              ),
            ],
          ),
          Positioned(
            left: AppSpacing.screenWidth(context) * 0.44,
            bottom: 25,
            child: HomeNavigationBotton(
              isHome: index == 2,
              onTap: () => go(context, 2),
            ),
          )
        ],
      ),
    );
  }

  void go(BuildContext context, int index) {
    context.go('${MainPage.path}/$index');
  }
}
