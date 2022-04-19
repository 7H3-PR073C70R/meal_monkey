import 'package:flutter/widgets.dart';

class AppTextStyle {
  AppTextStyle._();
  static const fontFamily = 'Metropolis';

  TextStyle headerOneTextStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  TextStyle headerTwoTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  TextStyle headerThreeTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  TextStyle headerFourTextStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  TextStyle bodyOneTextStyle = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );

  TextStyle bodyTwoTextStyle = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
  );
}
