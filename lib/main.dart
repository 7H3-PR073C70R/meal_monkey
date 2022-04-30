import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/router/router.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 800),
      builder: (context) {
        return MaterialApp.router(
          title: 'Meal Monkey',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: AppColors.kcWhiteColor,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              titleTextStyle: AppTextStyle.headerOneTextStyle
                  .copyWith(color: AppColors.greyColor),
            ),
            scaffoldBackgroundColor: AppColors.kcWhiteColor,
          ),
          routeInformationParser: Routes.route().routeInformationParser,
          routerDelegate: Routes.route().routerDelegate,
        );
      },
    );
  }
}
