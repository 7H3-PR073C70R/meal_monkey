import 'package:flutter/widgets.dart';

class AppTextStyle {
  AppTextStyle._();
  static const fontFamily = 'Metropolis';

  static TextStyle headerOneTextStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  static TextStyle headerTwoTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );

  static TextStyle headerThreeTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );

  static TextStyle headerFourTextStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
  );

  static TextStyle bodyOneTextStyle = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
  );

  static TextStyle bodyTwoTextStyle = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
  );
}
