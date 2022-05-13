// ignore_for_file: require_trailing_commas

import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  late PageController controller;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            AppSpacing.verticalSpaceLarge,
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: onboardingTexts.length,
                onPageChanged: (int index) => setState(
                  () {
                    currentIndex = index;
                  },
                ),
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.asset(
                          onboardingTexts[index]['image'] ?? '',
                          height: 300,
                        ),
                        AppSpacing.verticalSpaceLarge,
                        AppSpacing.verticalSpaceLarge,
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                3, (index) => buildDot(context, index))),
                        AppSpacing.verticalSpaceLarge,
                        Text(
                          onboardingTexts[index]['title'] ?? '',
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w400),
                        ),
                        AppSpacing.verticalSpaceLarge,
                        Text(
                          onboardingTexts[index]['description'] ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18, color: AppColors.greyColor),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            AppSpacing.verticalSpaceLarge,
            Button(
              ontap: () {},
              color: AppColors.orange,
              child: const Text(
                'Next',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.kcWhiteColor),
              ),
            ),
            AppSpacing.verticalSpaceMedium
          ],
        ),
      ),
    );
  }

  Container buildDot(BuildContext context, int index) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color:
              currentIndex == index ? AppColors.orange : AppColors.greyColor),
    );
  }
}

const onboardingTexts = [
  {
    'title': 'Find Food You Love',
    'description':
        'Discover the best food from over 1,000 and fast delivery to your doorstep',
    'image': 'assets/images/Find food you love.png'
  },
  {
    'title': 'Fast Delivery',
    'description': 'Fast food delivery to your home, office, wherever you are',
    'image': 'assets/images/Delivery.png'
  },
  {
    'title': 'Live Tracking',
    'description':
        'Real time tracking of food on the app once you placed the order',
    'image': 'assets/images/Live tracking vector.png'
  },
];
