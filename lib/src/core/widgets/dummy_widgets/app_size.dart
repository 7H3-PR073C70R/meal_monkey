import 'package:flutter/material.dart';

class AppSpacing {
  AppSpacing._();

  static const double defaultAppBarHeight = 56.0;
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  // vertical space smaller than default
  static const verticalSpaceTiny = SizedBox(height: 5.0);
  static const verticalSpaceSmall = SizedBox(height: 8.0);
  static const verticalSpaceMedium = SizedBox(height: 16.0);
  static const verticalSpaceLarge = SizedBox(height: 24.0);

  // horizontal space smaller than default
  static const horizontalSpaceTiny = SizedBox(width: 5.0);
  static const horizontalSpaceSmall = SizedBox(width: 8.0);
  static const horizontalSpaceMedium = SizedBox(width: 16.0);
  static const horizontalSpaceLarge = SizedBox(width: 24.0);
}
